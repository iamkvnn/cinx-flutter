// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_image_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseImageResponse {

 String get id; String get imageUrl;
/// Create a copy of CourseImageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseImageResponseCopyWith<CourseImageResponse> get copyWith => _$CourseImageResponseCopyWithImpl<CourseImageResponse>(this as CourseImageResponse, _$identity);

  /// Serializes this CourseImageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseImageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl);

@override
String toString() {
  return 'CourseImageResponse(id: $id, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $CourseImageResponseCopyWith<$Res>  {
  factory $CourseImageResponseCopyWith(CourseImageResponse value, $Res Function(CourseImageResponse) _then) = _$CourseImageResponseCopyWithImpl;
@useResult
$Res call({
 String id, String imageUrl
});




}
/// @nodoc
class _$CourseImageResponseCopyWithImpl<$Res>
    implements $CourseImageResponseCopyWith<$Res> {
  _$CourseImageResponseCopyWithImpl(this._self, this._then);

  final CourseImageResponse _self;
  final $Res Function(CourseImageResponse) _then;

/// Create a copy of CourseImageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? imageUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseImageResponse].
extension CourseImageResponsePatterns on CourseImageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseImageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseImageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseImageResponse value)  $default,){
final _that = this;
switch (_that) {
case _CourseImageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseImageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CourseImageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseImageResponse() when $default != null:
return $default(_that.id,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _CourseImageResponse():
return $default(_that.id,_that.imageUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _CourseImageResponse() when $default != null:
return $default(_that.id,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseImageResponse implements CourseImageResponse {
  const _CourseImageResponse({required this.id, required this.imageUrl});
  factory _CourseImageResponse.fromJson(Map<String, dynamic> json) => _$CourseImageResponseFromJson(json);

@override final  String id;
@override final  String imageUrl;

/// Create a copy of CourseImageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseImageResponseCopyWith<_CourseImageResponse> get copyWith => __$CourseImageResponseCopyWithImpl<_CourseImageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseImageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseImageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,imageUrl);

@override
String toString() {
  return 'CourseImageResponse(id: $id, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$CourseImageResponseCopyWith<$Res> implements $CourseImageResponseCopyWith<$Res> {
  factory _$CourseImageResponseCopyWith(_CourseImageResponse value, $Res Function(_CourseImageResponse) _then) = __$CourseImageResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String imageUrl
});




}
/// @nodoc
class __$CourseImageResponseCopyWithImpl<$Res>
    implements _$CourseImageResponseCopyWith<$Res> {
  __$CourseImageResponseCopyWithImpl(this._self, this._then);

  final _CourseImageResponse _self;
  final $Res Function(_CourseImageResponse) _then;

/// Create a copy of CourseImageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? imageUrl = null,}) {
  return _then(_CourseImageResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
