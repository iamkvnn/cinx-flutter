// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_metrics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardMetricsResponse _$DashboardMetricsResponseFromJson(
  Map<String, dynamic> json,
) => _DashboardMetricsResponse(
  totalRevenue: (json['totalRevenue'] as num?)?.toInt(),
  totalUsers: (json['totalUsers'] as num?)?.toInt(),
  newUsersThisMonth: (json['newUsersThisMonth'] as num?)?.toInt(),
  paidOrdersThisMonth: (json['paidOrdersThisMonth'] as num?)?.toInt(),
  topEnrolledCourses: (json['topEnrolledCourses'] as List<dynamic>?)
      ?.map((e) => CourseStats.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DashboardMetricsResponseToJson(
  _DashboardMetricsResponse instance,
) => <String, dynamic>{
  'totalRevenue': instance.totalRevenue,
  'totalUsers': instance.totalUsers,
  'newUsersThisMonth': instance.newUsersThisMonth,
  'paidOrdersThisMonth': instance.paidOrdersThisMonth,
  'topEnrolledCourses': instance.topEnrolledCourses,
};

_CourseStats _$CourseStatsFromJson(Map<String, dynamic> json) => _CourseStats(
  courseId: json['courseId'] as String?,
  title: json['title'] as String?,
  enrollmentCount: (json['enrollmentCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$CourseStatsToJson(_CourseStats instance) =>
    <String, dynamic>{
      'courseId': instance.courseId,
      'title': instance.title,
      'enrollmentCount': instance.enrollmentCount,
    };
