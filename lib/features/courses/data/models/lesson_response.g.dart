// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LessonResponse _$LessonResponseFromJson(Map<String, dynamic> json) =>
    _LessonResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      duration: (json['duration'] as num).toDouble(),
      lessonType: json['lessonType'] as String,
      orderIndex: (json['orderIndex'] as num).toInt(),
    );

Map<String, dynamic> _$LessonResponseToJson(_LessonResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'duration': instance.duration,
      'lessonType': instance.lessonType,
      'orderIndex': instance.orderIndex,
    };
