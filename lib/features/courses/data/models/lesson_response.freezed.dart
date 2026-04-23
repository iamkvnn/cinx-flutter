// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LessonResponse {

 String get id; String get title; double get duration; String get lessonType; int get orderIndex;
/// Create a copy of LessonResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonResponseCopyWith<LessonResponse> get copyWith => _$LessonResponseCopyWithImpl<LessonResponse>(this as LessonResponse, _$identity);

  /// Serializes this LessonResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.lessonType, lessonType) || other.lessonType == lessonType)&&(identical(other.orderIndex, orderIndex) || other.orderIndex == orderIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,duration,lessonType,orderIndex);

@override
String toString() {
  return 'LessonResponse(id: $id, title: $title, duration: $duration, lessonType: $lessonType, orderIndex: $orderIndex)';
}


}

/// @nodoc
abstract mixin class $LessonResponseCopyWith<$Res>  {
  factory $LessonResponseCopyWith(LessonResponse value, $Res Function(LessonResponse) _then) = _$LessonResponseCopyWithImpl;
@useResult
$Res call({
 String id, String title, double duration, String lessonType, int orderIndex
});




}
/// @nodoc
class _$LessonResponseCopyWithImpl<$Res>
    implements $LessonResponseCopyWith<$Res> {
  _$LessonResponseCopyWithImpl(this._self, this._then);

  final LessonResponse _self;
  final $Res Function(LessonResponse) _then;

/// Create a copy of LessonResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? duration = null,Object? lessonType = null,Object? orderIndex = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,lessonType: null == lessonType ? _self.lessonType : lessonType // ignore: cast_nullable_to_non_nullable
as String,orderIndex: null == orderIndex ? _self.orderIndex : orderIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonResponse].
extension LessonResponsePatterns on LessonResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonResponse value)  $default,){
final _that = this;
switch (_that) {
case _LessonResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LessonResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  double duration,  String lessonType,  int orderIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonResponse() when $default != null:
return $default(_that.id,_that.title,_that.duration,_that.lessonType,_that.orderIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  double duration,  String lessonType,  int orderIndex)  $default,) {final _that = this;
switch (_that) {
case _LessonResponse():
return $default(_that.id,_that.title,_that.duration,_that.lessonType,_that.orderIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  double duration,  String lessonType,  int orderIndex)?  $default,) {final _that = this;
switch (_that) {
case _LessonResponse() when $default != null:
return $default(_that.id,_that.title,_that.duration,_that.lessonType,_that.orderIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonResponse implements LessonResponse {
  const _LessonResponse({required this.id, required this.title, required this.duration, required this.lessonType, required this.orderIndex});
  factory _LessonResponse.fromJson(Map<String, dynamic> json) => _$LessonResponseFromJson(json);

@override final  String id;
@override final  String title;
@override final  double duration;
@override final  String lessonType;
@override final  int orderIndex;

/// Create a copy of LessonResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonResponseCopyWith<_LessonResponse> get copyWith => __$LessonResponseCopyWithImpl<_LessonResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.lessonType, lessonType) || other.lessonType == lessonType)&&(identical(other.orderIndex, orderIndex) || other.orderIndex == orderIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,duration,lessonType,orderIndex);

@override
String toString() {
  return 'LessonResponse(id: $id, title: $title, duration: $duration, lessonType: $lessonType, orderIndex: $orderIndex)';
}


}

/// @nodoc
abstract mixin class _$LessonResponseCopyWith<$Res> implements $LessonResponseCopyWith<$Res> {
  factory _$LessonResponseCopyWith(_LessonResponse value, $Res Function(_LessonResponse) _then) = __$LessonResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, double duration, String lessonType, int orderIndex
});




}
/// @nodoc
class __$LessonResponseCopyWithImpl<$Res>
    implements _$LessonResponseCopyWith<$Res> {
  __$LessonResponseCopyWithImpl(this._self, this._then);

  final _LessonResponse _self;
  final $Res Function(_LessonResponse) _then;

/// Create a copy of LessonResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? duration = null,Object? lessonType = null,Object? orderIndex = null,}) {
  return _then(_LessonResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,lessonType: null == lessonType ? _self.lessonType : lessonType // ignore: cast_nullable_to_non_nullable
as String,orderIndex: null == orderIndex ? _self.orderIndex : orderIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
