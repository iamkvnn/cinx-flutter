// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_metrics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardMetricsResponse {

 int? get totalRevenue; int? get totalUsers; int? get newUsersThisMonth; int? get paidOrdersThisMonth; List<CourseStats>? get topEnrolledCourses;
/// Create a copy of DashboardMetricsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardMetricsResponseCopyWith<DashboardMetricsResponse> get copyWith => _$DashboardMetricsResponseCopyWithImpl<DashboardMetricsResponse>(this as DashboardMetricsResponse, _$identity);

  /// Serializes this DashboardMetricsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardMetricsResponse&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.newUsersThisMonth, newUsersThisMonth) || other.newUsersThisMonth == newUsersThisMonth)&&(identical(other.paidOrdersThisMonth, paidOrdersThisMonth) || other.paidOrdersThisMonth == paidOrdersThisMonth)&&const DeepCollectionEquality().equals(other.topEnrolledCourses, topEnrolledCourses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue,totalUsers,newUsersThisMonth,paidOrdersThisMonth,const DeepCollectionEquality().hash(topEnrolledCourses));

@override
String toString() {
  return 'DashboardMetricsResponse(totalRevenue: $totalRevenue, totalUsers: $totalUsers, newUsersThisMonth: $newUsersThisMonth, paidOrdersThisMonth: $paidOrdersThisMonth, topEnrolledCourses: $topEnrolledCourses)';
}


}

/// @nodoc
abstract mixin class $DashboardMetricsResponseCopyWith<$Res>  {
  factory $DashboardMetricsResponseCopyWith(DashboardMetricsResponse value, $Res Function(DashboardMetricsResponse) _then) = _$DashboardMetricsResponseCopyWithImpl;
@useResult
$Res call({
 int? totalRevenue, int? totalUsers, int? newUsersThisMonth, int? paidOrdersThisMonth, List<CourseStats>? topEnrolledCourses
});




}
/// @nodoc
class _$DashboardMetricsResponseCopyWithImpl<$Res>
    implements $DashboardMetricsResponseCopyWith<$Res> {
  _$DashboardMetricsResponseCopyWithImpl(this._self, this._then);

  final DashboardMetricsResponse _self;
  final $Res Function(DashboardMetricsResponse) _then;

/// Create a copy of DashboardMetricsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRevenue = freezed,Object? totalUsers = freezed,Object? newUsersThisMonth = freezed,Object? paidOrdersThisMonth = freezed,Object? topEnrolledCourses = freezed,}) {
  return _then(_self.copyWith(
totalRevenue: freezed == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int?,totalUsers: freezed == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int?,newUsersThisMonth: freezed == newUsersThisMonth ? _self.newUsersThisMonth : newUsersThisMonth // ignore: cast_nullable_to_non_nullable
as int?,paidOrdersThisMonth: freezed == paidOrdersThisMonth ? _self.paidOrdersThisMonth : paidOrdersThisMonth // ignore: cast_nullable_to_non_nullable
as int?,topEnrolledCourses: freezed == topEnrolledCourses ? _self.topEnrolledCourses : topEnrolledCourses // ignore: cast_nullable_to_non_nullable
as List<CourseStats>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardMetricsResponse].
extension DashboardMetricsResponsePatterns on DashboardMetricsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardMetricsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardMetricsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardMetricsResponse value)  $default,){
final _that = this;
switch (_that) {
case _DashboardMetricsResponse():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardMetricsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardMetricsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? totalRevenue,  int? totalUsers,  int? newUsersThisMonth,  int? paidOrdersThisMonth,  List<CourseStats>? topEnrolledCourses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardMetricsResponse() when $default != null:
return $default(_that.totalRevenue,_that.totalUsers,_that.newUsersThisMonth,_that.paidOrdersThisMonth,_that.topEnrolledCourses);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? totalRevenue,  int? totalUsers,  int? newUsersThisMonth,  int? paidOrdersThisMonth,  List<CourseStats>? topEnrolledCourses)  $default,) {final _that = this;
switch (_that) {
case _DashboardMetricsResponse():
return $default(_that.totalRevenue,_that.totalUsers,_that.newUsersThisMonth,_that.paidOrdersThisMonth,_that.topEnrolledCourses);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? totalRevenue,  int? totalUsers,  int? newUsersThisMonth,  int? paidOrdersThisMonth,  List<CourseStats>? topEnrolledCourses)?  $default,) {final _that = this;
switch (_that) {
case _DashboardMetricsResponse() when $default != null:
return $default(_that.totalRevenue,_that.totalUsers,_that.newUsersThisMonth,_that.paidOrdersThisMonth,_that.topEnrolledCourses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardMetricsResponse implements DashboardMetricsResponse {
  const _DashboardMetricsResponse({this.totalRevenue, this.totalUsers, this.newUsersThisMonth, this.paidOrdersThisMonth, final  List<CourseStats>? topEnrolledCourses}): _topEnrolledCourses = topEnrolledCourses;
  factory _DashboardMetricsResponse.fromJson(Map<String, dynamic> json) => _$DashboardMetricsResponseFromJson(json);

@override final  int? totalRevenue;
@override final  int? totalUsers;
@override final  int? newUsersThisMonth;
@override final  int? paidOrdersThisMonth;
 final  List<CourseStats>? _topEnrolledCourses;
@override List<CourseStats>? get topEnrolledCourses {
  final value = _topEnrolledCourses;
  if (value == null) return null;
  if (_topEnrolledCourses is EqualUnmodifiableListView) return _topEnrolledCourses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DashboardMetricsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardMetricsResponseCopyWith<_DashboardMetricsResponse> get copyWith => __$DashboardMetricsResponseCopyWithImpl<_DashboardMetricsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardMetricsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardMetricsResponse&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.newUsersThisMonth, newUsersThisMonth) || other.newUsersThisMonth == newUsersThisMonth)&&(identical(other.paidOrdersThisMonth, paidOrdersThisMonth) || other.paidOrdersThisMonth == paidOrdersThisMonth)&&const DeepCollectionEquality().equals(other._topEnrolledCourses, _topEnrolledCourses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue,totalUsers,newUsersThisMonth,paidOrdersThisMonth,const DeepCollectionEquality().hash(_topEnrolledCourses));

@override
String toString() {
  return 'DashboardMetricsResponse(totalRevenue: $totalRevenue, totalUsers: $totalUsers, newUsersThisMonth: $newUsersThisMonth, paidOrdersThisMonth: $paidOrdersThisMonth, topEnrolledCourses: $topEnrolledCourses)';
}


}

/// @nodoc
abstract mixin class _$DashboardMetricsResponseCopyWith<$Res> implements $DashboardMetricsResponseCopyWith<$Res> {
  factory _$DashboardMetricsResponseCopyWith(_DashboardMetricsResponse value, $Res Function(_DashboardMetricsResponse) _then) = __$DashboardMetricsResponseCopyWithImpl;
@override @useResult
$Res call({
 int? totalRevenue, int? totalUsers, int? newUsersThisMonth, int? paidOrdersThisMonth, List<CourseStats>? topEnrolledCourses
});




}
/// @nodoc
class __$DashboardMetricsResponseCopyWithImpl<$Res>
    implements _$DashboardMetricsResponseCopyWith<$Res> {
  __$DashboardMetricsResponseCopyWithImpl(this._self, this._then);

  final _DashboardMetricsResponse _self;
  final $Res Function(_DashboardMetricsResponse) _then;

/// Create a copy of DashboardMetricsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRevenue = freezed,Object? totalUsers = freezed,Object? newUsersThisMonth = freezed,Object? paidOrdersThisMonth = freezed,Object? topEnrolledCourses = freezed,}) {
  return _then(_DashboardMetricsResponse(
totalRevenue: freezed == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as int?,totalUsers: freezed == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int?,newUsersThisMonth: freezed == newUsersThisMonth ? _self.newUsersThisMonth : newUsersThisMonth // ignore: cast_nullable_to_non_nullable
as int?,paidOrdersThisMonth: freezed == paidOrdersThisMonth ? _self.paidOrdersThisMonth : paidOrdersThisMonth // ignore: cast_nullable_to_non_nullable
as int?,topEnrolledCourses: freezed == topEnrolledCourses ? _self._topEnrolledCourses : topEnrolledCourses // ignore: cast_nullable_to_non_nullable
as List<CourseStats>?,
  ));
}


}


/// @nodoc
mixin _$CourseStats {

 String? get courseId; String? get title; int? get enrollmentCount;
/// Create a copy of CourseStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseStatsCopyWith<CourseStats> get copyWith => _$CourseStatsCopyWithImpl<CourseStats>(this as CourseStats, _$identity);

  /// Serializes this CourseStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseStats&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.enrollmentCount, enrollmentCount) || other.enrollmentCount == enrollmentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId,title,enrollmentCount);

@override
String toString() {
  return 'CourseStats(courseId: $courseId, title: $title, enrollmentCount: $enrollmentCount)';
}


}

/// @nodoc
abstract mixin class $CourseStatsCopyWith<$Res>  {
  factory $CourseStatsCopyWith(CourseStats value, $Res Function(CourseStats) _then) = _$CourseStatsCopyWithImpl;
@useResult
$Res call({
 String? courseId, String? title, int? enrollmentCount
});




}
/// @nodoc
class _$CourseStatsCopyWithImpl<$Res>
    implements $CourseStatsCopyWith<$Res> {
  _$CourseStatsCopyWithImpl(this._self, this._then);

  final CourseStats _self;
  final $Res Function(CourseStats) _then;

/// Create a copy of CourseStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courseId = freezed,Object? title = freezed,Object? enrollmentCount = freezed,}) {
  return _then(_self.copyWith(
courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,enrollmentCount: freezed == enrollmentCount ? _self.enrollmentCount : enrollmentCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseStats].
extension CourseStatsPatterns on CourseStats {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseStats() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseStats value)  $default,){
final _that = this;
switch (_that) {
case _CourseStats():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseStats value)?  $default,){
final _that = this;
switch (_that) {
case _CourseStats() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? courseId,  String? title,  int? enrollmentCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseStats() when $default != null:
return $default(_that.courseId,_that.title,_that.enrollmentCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? courseId,  String? title,  int? enrollmentCount)  $default,) {final _that = this;
switch (_that) {
case _CourseStats():
return $default(_that.courseId,_that.title,_that.enrollmentCount);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? courseId,  String? title,  int? enrollmentCount)?  $default,) {final _that = this;
switch (_that) {
case _CourseStats() when $default != null:
return $default(_that.courseId,_that.title,_that.enrollmentCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseStats implements CourseStats {
  const _CourseStats({this.courseId, this.title, this.enrollmentCount});
  factory _CourseStats.fromJson(Map<String, dynamic> json) => _$CourseStatsFromJson(json);

@override final  String? courseId;
@override final  String? title;
@override final  int? enrollmentCount;

/// Create a copy of CourseStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseStatsCopyWith<_CourseStats> get copyWith => __$CourseStatsCopyWithImpl<_CourseStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseStats&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.title, title) || other.title == title)&&(identical(other.enrollmentCount, enrollmentCount) || other.enrollmentCount == enrollmentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseId,title,enrollmentCount);

@override
String toString() {
  return 'CourseStats(courseId: $courseId, title: $title, enrollmentCount: $enrollmentCount)';
}


}

/// @nodoc
abstract mixin class _$CourseStatsCopyWith<$Res> implements $CourseStatsCopyWith<$Res> {
  factory _$CourseStatsCopyWith(_CourseStats value, $Res Function(_CourseStats) _then) = __$CourseStatsCopyWithImpl;
@override @useResult
$Res call({
 String? courseId, String? title, int? enrollmentCount
});




}
/// @nodoc
class __$CourseStatsCopyWithImpl<$Res>
    implements _$CourseStatsCopyWith<$Res> {
  __$CourseStatsCopyWithImpl(this._self, this._then);

  final _CourseStats _self;
  final $Res Function(_CourseStats) _then;

/// Create a copy of CourseStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseId = freezed,Object? title = freezed,Object? enrollmentCount = freezed,}) {
  return _then(_CourseStats(
courseId: freezed == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,enrollmentCount: freezed == enrollmentCount ? _self.enrollmentCount : enrollmentCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
