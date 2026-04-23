// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SectionResponse {

 String get id; String get title; String get description; double get duration; int get orderIndex; List<LessonResponse> get lessons;
/// Create a copy of SectionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionResponseCopyWith<SectionResponse> get copyWith => _$SectionResponseCopyWithImpl<SectionResponse>(this as SectionResponse, _$identity);

  /// Serializes this SectionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.orderIndex, orderIndex) || other.orderIndex == orderIndex)&&const DeepCollectionEquality().equals(other.lessons, lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,duration,orderIndex,const DeepCollectionEquality().hash(lessons));

@override
String toString() {
  return 'SectionResponse(id: $id, title: $title, description: $description, duration: $duration, orderIndex: $orderIndex, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class $SectionResponseCopyWith<$Res>  {
  factory $SectionResponseCopyWith(SectionResponse value, $Res Function(SectionResponse) _then) = _$SectionResponseCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, double duration, int orderIndex, List<LessonResponse> lessons
});




}
/// @nodoc
class _$SectionResponseCopyWithImpl<$Res>
    implements $SectionResponseCopyWith<$Res> {
  _$SectionResponseCopyWithImpl(this._self, this._then);

  final SectionResponse _self;
  final $Res Function(SectionResponse) _then;

/// Create a copy of SectionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? duration = null,Object? orderIndex = null,Object? lessons = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,orderIndex: null == orderIndex ? _self.orderIndex : orderIndex // ignore: cast_nullable_to_non_nullable
as int,lessons: null == lessons ? _self.lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<LessonResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [SectionResponse].
extension SectionResponsePatterns on SectionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionResponse value)  $default,){
final _that = this;
switch (_that) {
case _SectionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SectionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double duration,  int orderIndex,  List<LessonResponse> lessons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionResponse() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.duration,_that.orderIndex,_that.lessons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double duration,  int orderIndex,  List<LessonResponse> lessons)  $default,) {final _that = this;
switch (_that) {
case _SectionResponse():
return $default(_that.id,_that.title,_that.description,_that.duration,_that.orderIndex,_that.lessons);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  double duration,  int orderIndex,  List<LessonResponse> lessons)?  $default,) {final _that = this;
switch (_that) {
case _SectionResponse() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.duration,_that.orderIndex,_that.lessons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SectionResponse implements SectionResponse {
  const _SectionResponse({required this.id, required this.title, required this.description, required this.duration, required this.orderIndex, required final  List<LessonResponse> lessons}): _lessons = lessons;
  factory _SectionResponse.fromJson(Map<String, dynamic> json) => _$SectionResponseFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  double duration;
@override final  int orderIndex;
 final  List<LessonResponse> _lessons;
@override List<LessonResponse> get lessons {
  if (_lessons is EqualUnmodifiableListView) return _lessons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lessons);
}


/// Create a copy of SectionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionResponseCopyWith<_SectionResponse> get copyWith => __$SectionResponseCopyWithImpl<_SectionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SectionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.orderIndex, orderIndex) || other.orderIndex == orderIndex)&&const DeepCollectionEquality().equals(other._lessons, _lessons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,duration,orderIndex,const DeepCollectionEquality().hash(_lessons));

@override
String toString() {
  return 'SectionResponse(id: $id, title: $title, description: $description, duration: $duration, orderIndex: $orderIndex, lessons: $lessons)';
}


}

/// @nodoc
abstract mixin class _$SectionResponseCopyWith<$Res> implements $SectionResponseCopyWith<$Res> {
  factory _$SectionResponseCopyWith(_SectionResponse value, $Res Function(_SectionResponse) _then) = __$SectionResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, double duration, int orderIndex, List<LessonResponse> lessons
});




}
/// @nodoc
class __$SectionResponseCopyWithImpl<$Res>
    implements _$SectionResponseCopyWith<$Res> {
  __$SectionResponseCopyWithImpl(this._self, this._then);

  final _SectionResponse _self;
  final $Res Function(_SectionResponse) _then;

/// Create a copy of SectionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? duration = null,Object? orderIndex = null,Object? lessons = null,}) {
  return _then(_SectionResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double,orderIndex: null == orderIndex ? _self.orderIndex : orderIndex // ignore: cast_nullable_to_non_nullable
as int,lessons: null == lessons ? _self._lessons : lessons // ignore: cast_nullable_to_non_nullable
as List<LessonResponse>,
  ));
}


}

// dart format on
