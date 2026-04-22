import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_users_usecase.dart';
import 'user_list_event.dart';
import 'user_list_state.dart';

@injectable
class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final GetUsersUseCase _getUsers;

  UserListBloc(this._getUsers) : super(const UserListState()) {
    on<UserListEvent>((event, emit) async {
      await event.map(
        fetch: (e) => _onFetch(e, emit),
        loadMore: (e) => _onLoadMore(e, emit),
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
      users: [],
      currentPage: 1,
      hasReachedMax: false,
      currentQuery: event.query,
    ));

    final result = await _getUsers(
      page: state.currentPage,
      size: 20,
      query: state.currentQuery,
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
}
