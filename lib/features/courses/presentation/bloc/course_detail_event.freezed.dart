// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseDetailEvent {

 String get courseId;
/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseDetailEventCopyWith<CourseDetailEvent> get copyWith => _$CourseDetailEventCopyWithImpl<CourseDetailEvent>(this as CourseDetailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDetailEvent&&(identical(other.courseId, courseId) || other.courseId == courseId));
}


@override
int get hashCode => Object.hash(runtimeType,courseId);

@override
String toString() {
  return 'CourseDetailEvent(courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class $CourseDetailEventCopyWith<$Res>  {
  factory $CourseDetailEventCopyWith(CourseDetailEvent value, $Res Function(CourseDetailEvent) _then) = _$CourseDetailEventCopyWithImpl;
@useResult
$Res call({
 String courseId
});




}
/// @nodoc
class _$CourseDetailEventCopyWithImpl<$Res>
    implements $CourseDetailEventCopyWith<$Res> {
  _$CourseDetailEventCopyWithImpl(this._self, this._then);

  final CourseDetailEvent _self;
  final $Res Function(CourseDetailEvent) _then;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courseId = null,}) {
  return _then(_self.copyWith(
courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseDetailEvent].
extension CourseDetailEventPatterns on CourseDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchCourseDetail value)?  fetch,TResult Function( ApproveCourse value)?  approve,TResult Function( RejectCourse value)?  reject,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchCourseDetail() when fetch != null:
return fetch(_that);case ApproveCourse() when approve != null:
return approve(_that);case RejectCourse() when reject != null:
return reject(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchCourseDetail value)  fetch,required TResult Function( ApproveCourse value)  approve,required TResult Function( RejectCourse value)  reject,}){
final _that = this;
switch (_that) {
case FetchCourseDetail():
return fetch(_that);case ApproveCourse():
return approve(_that);case RejectCourse():
return reject(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchCourseDetail value)?  fetch,TResult? Function( ApproveCourse value)?  approve,TResult? Function( RejectCourse value)?  reject,}){
final _that = this;
switch (_that) {
case FetchCourseDetail() when fetch != null:
return fetch(_that);case ApproveCourse() when approve != null:
return approve(_that);case RejectCourse() when reject != null:
return reject(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String courseId)?  fetch,TResult Function( String courseId)?  approve,TResult Function( String courseId,  String reason)?  reject,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchCourseDetail() when fetch != null:
return fetch(_that.courseId);case ApproveCourse() when approve != null:
return approve(_that.courseId);case RejectCourse() when reject != null:
return reject(_that.courseId,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String courseId)  fetch,required TResult Function( String courseId)  approve,required TResult Function( String courseId,  String reason)  reject,}) {final _that = this;
switch (_that) {
case FetchCourseDetail():
return fetch(_that.courseId);case ApproveCourse():
return approve(_that.courseId);case RejectCourse():
return reject(_that.courseId,_that.reason);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String courseId)?  fetch,TResult? Function( String courseId)?  approve,TResult? Function( String courseId,  String reason)?  reject,}) {final _that = this;
switch (_that) {
case FetchCourseDetail() when fetch != null:
return fetch(_that.courseId);case ApproveCourse() when approve != null:
return approve(_that.courseId);case RejectCourse() when reject != null:
return reject(_that.courseId,_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class FetchCourseDetail implements CourseDetailEvent {
  const FetchCourseDetail(this.courseId);
  

@override final  String courseId;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchCourseDetailCopyWith<FetchCourseDetail> get copyWith => _$FetchCourseDetailCopyWithImpl<FetchCourseDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCourseDetail&&(identical(other.courseId, courseId) || other.courseId == courseId));
}


@override
int get hashCode => Object.hash(runtimeType,courseId);

@override
String toString() {
  return 'CourseDetailEvent.fetch(courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class $FetchCourseDetailCopyWith<$Res> implements $CourseDetailEventCopyWith<$Res> {
  factory $FetchCourseDetailCopyWith(FetchCourseDetail value, $Res Function(FetchCourseDetail) _then) = _$FetchCourseDetailCopyWithImpl;
@override @useResult
$Res call({
 String courseId
});




}
/// @nodoc
class _$FetchCourseDetailCopyWithImpl<$Res>
    implements $FetchCourseDetailCopyWith<$Res> {
  _$FetchCourseDetailCopyWithImpl(this._self, this._then);

  final FetchCourseDetail _self;
  final $Res Function(FetchCourseDetail) _then;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseId = null,}) {
  return _then(FetchCourseDetail(
null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ApproveCourse implements CourseDetailEvent {
  const ApproveCourse(this.courseId);
  

@override final  String courseId;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApproveCourseCopyWith<ApproveCourse> get copyWith => _$ApproveCourseCopyWithImpl<ApproveCourse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApproveCourse&&(identical(other.courseId, courseId) || other.courseId == courseId));
}


@override
int get hashCode => Object.hash(runtimeType,courseId);

@override
String toString() {
  return 'CourseDetailEvent.approve(courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class $ApproveCourseCopyWith<$Res> implements $CourseDetailEventCopyWith<$Res> {
  factory $ApproveCourseCopyWith(ApproveCourse value, $Res Function(ApproveCourse) _then) = _$ApproveCourseCopyWithImpl;
@override @useResult
$Res call({
 String courseId
});




}
/// @nodoc
class _$ApproveCourseCopyWithImpl<$Res>
    implements $ApproveCourseCopyWith<$Res> {
  _$ApproveCourseCopyWithImpl(this._self, this._then);

  final ApproveCourse _self;
  final $Res Function(ApproveCourse) _then;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseId = null,}) {
  return _then(ApproveCourse(
null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RejectCourse implements CourseDetailEvent {
  const RejectCourse(this.courseId, this.reason);
  

@override final  String courseId;
 final  String reason;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectCourseCopyWith<RejectCourse> get copyWith => _$RejectCourseCopyWithImpl<RejectCourse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectCourse&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,courseId,reason);

@override
String toString() {
  return 'CourseDetailEvent.reject(courseId: $courseId, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $RejectCourseCopyWith<$Res> implements $CourseDetailEventCopyWith<$Res> {
  factory $RejectCourseCopyWith(RejectCourse value, $Res Function(RejectCourse) _then) = _$RejectCourseCopyWithImpl;
@override @useResult
$Res call({
 String courseId, String reason
});




}
/// @nodoc
class _$RejectCourseCopyWithImpl<$Res>
    implements $RejectCourseCopyWith<$Res> {
  _$RejectCourseCopyWithImpl(this._self, this._then);

  final RejectCourse _self;
  final $Res Function(RejectCourse) _then;

/// Create a copy of CourseDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseId = null,Object? reason = null,}) {
  return _then(RejectCourse(
null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
