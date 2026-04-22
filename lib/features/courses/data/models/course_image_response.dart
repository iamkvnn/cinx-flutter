import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_image_response.freezed.dart';
part 'course_image_response.g.dart';

@freezed
sealed class CourseImageResponse with _$CourseImageResponse {
  const factory CourseImageResponse({
    required String id,
    required String imageUrl,
  }) = _CourseImageResponse;

  factory CourseImageResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseImageResponseFromJson(json);
}