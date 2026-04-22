import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_notifications_usecase.dart';
import '../../domain/usecases/get_unread_count_usecase.dart';
import '../../domain/usecases/toggle_read_usecase.dart';
import 'notification_event.dart';
import 'notification_state.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final GetNotificationsUseCase _getNotifications;
  final GetUnreadNotificationCountUseCase _getUnreadCount;
  final ToggleNotificationReadUseCase _toggleRead;

  NotificationBloc(
    this._getNotifications,
    this._getUnreadCount,
    this._toggleRead,
  ) : super(const NotificationState()) {
    on<NotificationEvent>((event, emit) async {
      await event.map(
        fetch: (e) => _onFetch(e, emit),
        loadMore: (e) => _onLoadMore(e, emit),
        fetchUnreadCount: (e) => _onFetchUnreadCount(e, emit),
        toggleRead: (e) => _onToggleRead(e, emit),
      );
    });
  }

  Future<void> _onFetch(
    FetchNotifications event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: null,
      notifications: [],
      currentPage: 1,
      hasReachedMax: false,
    ));

    final result = await _getNotifications(page: state.currentPage, size: 20);

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (paginatedResponse) {
        final data = paginatedResponse.data ?? [];
        emit(state.copyWith(
          isLoading: false,
          notifications: data,
          hasReachedMax: data.isEmpty ||
              (paginatedResponse.meta != null &&
                  paginatedResponse.meta!.page >=
                      paginatedResponse.meta!.totalPages),
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    LoadMoreNotifications event,
    Emitter<NotificationState> emit,
  ) async {
    if (state.hasReachedMax || state.isFetchingMore || state.isLoading) return;

    emit(state.copyWith(isFetchingMore: true, errorMessage: null));

    final nextPage = state.currentPage + 1;
    final result = await _getNotifications(page: nextPage, size: 20);

    result.fold(
      (failure) => emit(state.copyWith(
        isFetchingMore: false,
        errorMessage: failure.message,
      )),
      (paginatedResponse) {
        final data = paginatedResponse.data ?? [];
        emit(state.copyWith(
          isFetchingMore: false,
          currentPage: nextPage,
          notifications: List.of(state.notifications)..addAll(data),
          hasReachedMax: data.isEmpty ||
              (paginatedResponse.meta != null &&
                  paginatedResponse.meta!.page >=
                      paginatedResponse.meta!.totalPages),
        ));
      },
    );
  }

  Future<void> _onFetchUnreadCount(
    FetchUnreadCount event,
    Emitter<NotificationState> emit,
  ) async {
    final result = await _getUnreadCount();
    result.fold(
      (_) {}, // Silently handle error for count
      (count) => emit(state.copyWith(unreadCount: count)),
    );
  }

  Future<void> _onToggleRead(
    ToggleRead event,
    Emitter<NotificationState> emit,
  ) async {
    final result = await _toggleRead(event.id);
    result.fold(
      (_) {}, // Silently handle error, could show toast
      (_) {
        // Optimistically update list
        final updatedList = state.notifications.map((n) {
          if (n.id == event.id) {
            return n.copyWith(isRead: !(n.isRead ?? false));
          }
          return n;
        }).toList();
        
        emit(state.copyWith(notifications: updatedList));
        add(const NotificationEvent.fetchUnreadCount());
      },
    );
  }
}
