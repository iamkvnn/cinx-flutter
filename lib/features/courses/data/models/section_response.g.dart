// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SectionResponse _$SectionResponseFromJson(Map<String, dynamic> json) =>
    _SectionResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      duration: (json['duration'] as num).toDouble(),
      orderIndex: (json['orderIndex'] as num).toInt(),
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => LessonResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionResponseToJson(_SectionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'orderIndex': instance.orderIndex,
      'lessons': instance.lessons,
    };
