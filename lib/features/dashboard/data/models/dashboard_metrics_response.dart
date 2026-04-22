import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_metrics_response.freezed.dart';
part 'dashboard_metrics_response.g.dart';

@freezed
sealed class DashboardMetricsResponse with _$DashboardMetricsResponse {
  const factory DashboardMetricsResponse({
    int? totalRevenue,
    int? totalUsers,
    int? newUsersThisMonth,
    int? paidOrdersThisMonth,
    List<CourseStats>? topEnrolledCourses,
  }) = _DashboardMetricsResponse;

  factory DashboardMetricsResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardMetricsResponseFromJson(json);
}

@freezed
sealed class CourseStats with _$CourseStats {
  const factory CourseStats({
    String? courseId,
    String? title,
    int? enrollmentCount,
  }) = _CourseStats;

  factory CourseStats.fromJson(Map<String, dynamic> json) =>
      _$CourseStatsFromJson(json);
}
