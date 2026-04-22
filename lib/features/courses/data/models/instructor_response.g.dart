// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InstructorResponse _$InstructorResponseFromJson(Map<String, dynamic> json) =>
    _InstructorResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      bio: json['bio'] as String?,
      profilePictureUrl: json['profilePictureUrl'] as String?,
    );

Map<String, dynamic> _$InstructorResponseToJson(_InstructorResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'avatarUrl': instance.avatarUrl,
      'bio': instance.bio,
      'profilePictureUrl': instance.profilePictureUrl,
    };
