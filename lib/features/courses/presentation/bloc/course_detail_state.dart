import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/course_response.dart';

part 'course_detail_state.freezed.dart';

@freezed
class CourseDetailState with _$CourseDetailState {
  const factory CourseDetailState.initial() = _Initial;
  const factory CourseDetailState.loading() = _Loading;
  const factory CourseDetailState.loaded(CourseResponse course) = _Loaded;
  const factory CourseDetailState.actionLoading(CourseResponse course) =
      _ActionLoading;
  const factory CourseDetailState.actionSuccess(CourseResponse course) =
      _ActionSuccess;
  const factory CourseDetailState.failure(String message) = _Failure;
}
