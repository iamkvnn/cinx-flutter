import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/user_notification_response.dart';

part 'notification_state.freezed.dart';

@freezed
sealed class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default([]) List<UserNotificationResponse> notifications,
    @Default(true) bool isLoading,
    @Default(false) bool isFetchingMore,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
    String? errorMessage,
    @Default(0) int unreadCount,
  }) = _NotificationState;
}
