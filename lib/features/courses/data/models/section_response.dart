import 'package:freezed_annotation/freezed_annotation.dart';
import 'lesson_response.dart';

part 'section_response.freezed.dart';
part 'section_response.g.dart';

@freezed
sealed class SectionResponse with _$SectionResponse {
  const factory SectionResponse({
    required String id,
    required String title,
    required String description,
    required double duration,
    required int orderIndex,
    required List<LessonResponse> lessons,
  }) = _SectionResponse;

  factory SectionResponse.fromJson(Map<String, dynamic> json) =>
      _$SectionResponseFromJson(json);
}