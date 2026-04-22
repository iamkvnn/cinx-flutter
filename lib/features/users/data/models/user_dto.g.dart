// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  userId: json['userId'] as String,
  name: json['name'] as String?,
  email: json['email'] as String?,
  role: json['role'] as String?,
  gender: json['gender'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  xp: (json['xp'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'userId': instance.userId,
  'name': instance.name,
  'email': instance.email,
  'role': instance.role,
  'gender': instance.gender,
  'avatarUrl': instance.avatarUrl,
  'xp': instance.xp,
};
