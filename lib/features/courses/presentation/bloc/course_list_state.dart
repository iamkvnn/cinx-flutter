import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/course_response.dart';

part 'course_list_state.freezed.dart';

@freezed
sealed class CourseListState with _$CourseListState {
  const factory CourseListState({
    @Default([]) List<CourseResponse> courses,
    @Default(true) bool isLoading, // Initial loading vs load more
    @Default(false) bool isFetchingMore,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
    String? currentQuery,
    String? currentStatus,
    String? currentCategoryId,
    Map<String, String>? currentSort,
    String? errorMessage,
  }) = _CourseListState;
}