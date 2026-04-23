import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_response.freezed.dart';
part 'lesson_response.g.dart';

@freezed
sealed class LessonResponse with _$LessonResponse {
  const factory LessonResponse({
    required String id,
    required String title,
    required double duration,
    required String lessonType,
    required int orderIndex,
  }) = _LessonResponse;

  factory LessonResponse.fromJson(Map<String, dynamic> json) =>
      _$LessonResponseFromJson(json);
}