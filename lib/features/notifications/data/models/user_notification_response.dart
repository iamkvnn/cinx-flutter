import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_notification_response.freezed.dart';
part 'user_notification_response.g.dart';

@freezed
sealed class UserNotificationResponse with _$UserNotificationResponse {
  const factory UserNotificationResponse({
    required String id,
    String? userId,
    String? title,
    String? message,
    bool? isRead,
  }) = _UserNotificationResponse;

  factory UserNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$UserNotificationResponseFromJson(json);
}
