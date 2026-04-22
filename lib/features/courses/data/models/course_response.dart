import 'package:freezed_annotation/freezed_annotation.dart';
import 'category_response.dart';
import 'instructor_response.dart';
import 'course_image_response.dart';

part 'course_response.freezed.dart';
part 'course_response.g.dart';

@freezed
sealed class CourseResponse with _$CourseResponse {
  const factory CourseResponse({
    required String id,
    required String title,
    String? description,
    CategoryResponse? category,
    InstructorResponse? instructor,
    List<CourseImageResponse>? images,
    int? price,
    int? discountedPrice,
    int? discountRate,
    double? rating,
    int? enrollmentCount,
    bool? isPublished,
    bool? isInSubscription,
    int? duration,
    bool? hasCertificate,
    String? certificateTitle,
    String? status, // DRAFT, WAITING_APPROVAL, PUBLISHED, REJECTED, ARCHIVED
    String? createdAt,
    String? updatedAt,
  }) = _CourseResponse;

  factory CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseResponseFromJson(json);
}