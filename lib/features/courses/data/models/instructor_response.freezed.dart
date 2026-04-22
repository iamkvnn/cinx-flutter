// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instructor_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InstructorResponse {

 String get id; String get name; String get email; String? get gender; String? get avatarUrl; String? get bio; String? get profilePictureUrl;
/// Create a copy of InstructorResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstructorResponseCopyWith<InstructorResponse> get copyWith => _$InstructorResponseCopyWithImpl<InstructorResponse>(this as InstructorResponse, _$identity);

  /// Serializes this InstructorResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InstructorResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.profilePictureUrl, profilePictureUrl) || other.profilePictureUrl == profilePictureUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,gender,avatarUrl,bio,profilePictureUrl);

@override
String toString() {
  return 'InstructorResponse(id: $id, name: $name, email: $email, gender: $gender, avatarUrl: $avatarUrl, bio: $bio, profilePictureUrl: $profilePictureUrl)';
}


}

/// @nodoc
abstract mixin class $InstructorResponseCopyWith<$Res>  {
  factory $InstructorResponseCopyWith(InstructorResponse value, $Res Function(InstructorResponse) _then) = _$InstructorResponseCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, String? gender, String? avatarUrl, String? bio, String? profilePictureUrl
});




}
/// @nodoc
class _$InstructorResponseCopyWithImpl<$Res>
    implements $InstructorResponseCopyWith<$Res> {
  _$InstructorResponseCopyWithImpl(this._self, this._then);

  final InstructorResponse _self;
  final $Res Function(InstructorResponse) _then;

/// Create a copy of InstructorResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? gender = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? profilePictureUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,profilePictureUrl: freezed == profilePictureUrl ? _self.profilePictureUrl : profilePictureUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InstructorResponse].
extension InstructorResponsePatterns on InstructorResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InstructorResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InstructorResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InstructorResponse value)  $default,){
final _that = this;
switch (_that) {
case _InstructorResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InstructorResponse value)?  $default,){
final _that = this;
switch (_that) {
case _InstructorResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String? gender,  String? avatarUrl,  String? bio,  String? profilePictureUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InstructorResponse() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.gender,_that.avatarUrl,_that.bio,_that.profilePictureUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String? gender,  String? avatarUrl,  String? bio,  String? profilePictureUrl)  $default,) {final _that = this;
switch (_that) {
case _InstructorResponse():
return $default(_that.id,_that.name,_that.email,_that.gender,_that.avatarUrl,_that.bio,_that.profilePictureUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  String? gender,  String? avatarUrl,  String? bio,  String? profilePictureUrl)?  $default,) {final _that = this;
switch (_that) {
case _InstructorResponse() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.gender,_that.avatarUrl,_that.bio,_that.profilePictureUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InstructorResponse implements InstructorResponse {
  const _InstructorResponse({required this.id, required this.name, required this.email, this.gender, this.avatarUrl, this.bio, this.profilePictureUrl});
  factory _InstructorResponse.fromJson(Map<String, dynamic> json) => _$InstructorResponseFromJson(json);

@override final  String id;
@override final  String name;
@override final  String email;
@override final  String? gender;
@override final  String? avatarUrl;
@override final  String? bio;
@override final  String? profilePictureUrl;

/// Create a copy of InstructorResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstructorResponseCopyWith<_InstructorResponse> get copyWith => __$InstructorResponseCopyWithImpl<_InstructorResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstructorResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InstructorResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.profilePictureUrl, profilePictureUrl) || other.profilePictureUrl == profilePictureUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,gender,avatarUrl,bio,profilePictureUrl);

@override
String toString() {
  return 'InstructorResponse(id: $id, name: $name, email: $email, gender: $gender, avatarUrl: $avatarUrl, bio: $bio, profilePictureUrl: $profilePictureUrl)';
}


}

/// @nodoc
abstract mixin class _$InstructorResponseCopyWith<$Res> implements $InstructorResponseCopyWith<$Res> {
  factory _$InstructorResponseCopyWith(_InstructorResponse value, $Res Function(_InstructorResponse) _then) = __$InstructorResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, String? gender, String? avatarUrl, String? bio, String? profilePictureUrl
});




}
/// @nodoc
class __$InstructorResponseCopyWithImpl<$Res>
    implements _$InstructorResponseCopyWith<$Res> {
  __$InstructorResponseCopyWithImpl(this._self, this._then);

  final _InstructorResponse _self;
  final $Res Function(_InstructorResponse) _then;

/// Create a copy of InstructorResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? gender = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? profilePictureUrl = freezed,}) {
  return _then(_InstructorResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,profilePictureUrl: freezed == profilePictureUrl ? _self.profilePictureUrl : profilePictureUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
