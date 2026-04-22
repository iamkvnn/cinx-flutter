import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_event.freezed.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.fetch() = FetchNotifications;
  const factory NotificationEvent.loadMore() = LoadMoreNotifications;
  const factory NotificationEvent.fetchUnreadCount() = FetchUnreadCount;
  const factory NotificationEvent.toggleRead(String id) = ToggleRead;
}
