// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserNotificationResponse _$UserNotificationResponseFromJson(
  Map<String, dynamic> json,
) => _UserNotificationResponse(
  id: json['id'] as String,
  userId: json['userId'] as String?,
  title: json['title'] as String?,
  message: json['message'] as String?,
  isRead: json['isRead'] as bool?,
);

Map<String, dynamic> _$UserNotificationResponseToJson(
  _UserNotificationResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'title': instance.title,
  'message': instance.message,
  'isRead': instance.isRead,
};
