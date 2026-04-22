import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_detail_event.freezed.dart';

@freezed
sealed class CourseDetailEvent with _$CourseDetailEvent {
  const factory CourseDetailEvent.fetch(String courseId) = FetchCourseDetail;
  const factory CourseDetailEvent.approve(String courseId) = ApproveCourse;
  const factory CourseDetailEvent.reject(String courseId, String reason) =
      RejectCourse;
}
