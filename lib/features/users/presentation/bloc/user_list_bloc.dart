import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';
import '../../domain/usecases/get_users_usecase.dart';
import '../../domain/usecases/ban_user_usecase.dart';
import '../../domain/usecases/unban_user_usecase.dart';
import '../../domain/usecases/verify_instructor_usecase.dart';
import '../../domain/usecases/reject_instructor_usecase.dart';
import 'user_list_event.dart';
import 'user_list_state.dart';

@injectable
class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final GetUsersUseCase _getUsers;
  final BanUserUseCase _banUser;
  final UnbanUserUseCase _unbanUser;
  final VerifyInstructorUseCase _verifyInstructor;
  final RejectInstructorUseCase _rejectInstructor;

  UserListBloc(
    this._getUsers,
    this._banUser,
    this._unbanUser,
    this._verifyInstructor,
    this._rejectInstructor,
  ) : super(const UserListState()) {
    on<UserListEvent>((event, emit) async {
      await event.map(
        fetch: (e) => _onFetch(e, emit),
        loadMore: (e) => _onLoadMore(e, emit),
        banUser: (e) => _onBanUser(e, emit),
        unbanUser: (e) => _onUnbanUser(e, emit),
        verifyInstructor: (e) => _onVerifyInstructor(e, emit),
        rejectInstructor: (e) => _onRejectInstructor(e, emit),
      );
    });
  }

  Future<void> _onFetch(
    FetchUsers event,
    Emitter<UserListState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: null,
      actionSuccessMessage: null,
      actionErrorMessage: null,
      users: [],
      currentPage: 1,
      hasReachedMax: false,
      currentQuery: event.query ?? state.currentQuery,
      currentRole: event.role ?? state.currentRole,
      currentIsInstructorVerified: event.isInstructorVerified,
      currentSort: event.sort ?? state.currentSort,
    ));

    final result = await _getUsers(
      page: state.currentPage,
      size: 20,
      query: state.currentQuery,
      role: state.currentRole,
      isInstructorVerified: state.currentIsInstructorVerified,
      sort: state.currentSort != null ? jsonEncode(state.currentSort) : null,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (paginatedResponse) {
        final newUsers = paginatedResponse.data ?? [];
        emit(state.copyWith(
          isLoading: false,
          users: newUsers,
          hasReachedMax: newUsers.isEmpty ||
              (paginatedResponse.meta != null &&
                  paginatedResponse.meta!.page >=
                      paginatedResponse.meta!.totalPages),
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    LoadMoreUsers event,
    Emitter<UserListState> emit,
  ) async {
    if (state.hasReachedMax || state.isFetchingMore || state.isLoading) return;

    emit(state.copyWith(isFetchingMore: true, errorMessage: null));

    final nextPage = state.currentPage + 1;
    final result = await _getUsers(
      page: nextPage,
      size: 20,
      query: state.currentQuery,
      role: state.currentRole,
      isInstructorVerified: state.currentIsInstructorVerified,
      sort: state.currentSort != null ? jsonEncode(state.currentSort) : null,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isFetchingMore: false,
        errorMessage: failure.message,
      )),
      (paginatedResponse) {
        final newUsers = paginatedResponse.data ?? [];
        emit(state.copyWith(
          isFetchingMore: false,
          currentPage: nextPage,
          users: List.of(state.users)..addAll(newUsers),
          hasReachedMax: newUsers.isEmpty ||
              (paginatedResponse.meta != null &&
                  paginatedResponse.meta!.page >=
                      paginatedResponse.meta!.totalPages),
        ));
      },
    );
  }

  Future<void> _onBanUser(BanUser event, Emitter<UserListState> emit) async {
    emit(state.copyWith(isActionLoading: true, actionErrorMessage: null, actionSuccessMessage: null));
    final result = await _banUser(id: event.id, reason: event.reason);
    result.fold(
      (failure) => emit(state.copyWith(isActionLoading: false, actionErrorMessage: failure.message)),
      (_) {
        final updatedUsers = state.users.map((user) {
          if (user.userId == event.id) {
            return user.copyWith(status: 'BANNED');
          }
          return user;
        }).toList();
        emit(state.copyWith(
          isActionLoading: false,
          actionSuccessMessage: 'User banned successfully',
          users: updatedUsers,
        ));
      },
    );
  }

  Future<void> _onUnbanUser(UnbanUser event, Emitter<UserListState> emit) async {
    emit(state.copyWith(isActionLoading: true, actionErrorMessage: null, actionSuccessMessage: null));
    final result = await _unbanUser(id: event.id);
    result.fold(
      (failure) => emit(state.copyWith(isActionLoading: false, actionErrorMessage: failure.message)),
      (_) {
        final updatedUsers = state.users.map((user) {
          if (user.userId == event.id) {
            return user.copyWith(status: 'ACTIVE');
          }
          return user;
        }).toList();
        emit(state.copyWith(
          isActionLoading: false,
          actionSuccessMessage: 'User unbanned successfully',
          users: updatedUsers,
        ));
      },
    );
  }

  Future<void> _onVerifyInstructor(VerifyInstructor event, Emitter<UserListState> emit) async {
    emit(state.copyWith(isActionLoading: true, actionErrorMessage: null, actionSuccessMessage: null));
    final result = await _verifyInstructor(id: event.id);
    result.fold(
      (failure) => emit(state.copyWith(isActionLoading: false, actionErrorMessage: failure.message)),
      (_) {
        final updatedUsers = state.users.map((user) {
          if (user.userId == event.id) {
            return user.copyWith(isInstructorVerified: true);
          }
          return user;
        }).toList();
        emit(state.copyWith(
          isActionLoading: false,
          actionSuccessMessage: 'Instructor verified successfully',
          users: updatedUsers,
        ));
      },
    );
  }

  Future<void> _onRejectInstructor(RejectInstructor event, Emitter<UserListState> emit) async {
    emit(state.copyWith(isActionLoading: true, actionErrorMessage: null, actionSuccessMessage: null));
    final result = await _rejectInstructor(id: event.id, reason: event.reason);
    result.fold(
      (failure) => emit(state.copyWith(isActionLoading: false, actionErrorMessage: failure.message)),
      (_) {
        final updatedUsers = state.users.map((user) {
          if (user.userId == event.id) {
            return user.copyWith(isInstructorVerified: false);
          }
          return user;
        }).toList();
        emit(state.copyWith(
          isActionLoading: false,
          actionSuccessMessage: 'Instructor rejected successfully',
          users: updatedUsers,
        ));
      },
    );
  }
}
