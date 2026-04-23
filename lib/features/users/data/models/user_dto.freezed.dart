// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDto {

 String get userId; String? get name; String? get email; String? get role;// USER, INSTRUCTOR, ADMIN
 String? get gender;// MALE, FEMALE
 String? get avatarUrl; bool? get isReceivePushNotification; bool? get isInstructorVerified; String? get status;// ACTIVE, BANNED, UNVERIFIED
 int? get xp; String? get cvUrl;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isReceivePushNotification, isReceivePushNotification) || other.isReceivePushNotification == isReceivePushNotification)&&(identical(other.isInstructorVerified, isInstructorVerified) || other.isInstructorVerified == isInstructorVerified)&&(identical(other.status, status) || other.status == status)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.cvUrl, cvUrl) || other.cvUrl == cvUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,email,role,gender,avatarUrl,isReceivePushNotification,isInstructorVerified,status,xp,cvUrl);

@override
String toString() {
  return 'UserDto(userId: $userId, name: $name, email: $email, role: $role, gender: $gender, avatarUrl: $avatarUrl, isReceivePushNotification: $isReceivePushNotification, isInstructorVerified: $isInstructorVerified, status: $status, xp: $xp, cvUrl: $cvUrl)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
 String userId, String? name, String? email, String? role, String? gender, String? avatarUrl, bool? isReceivePushNotification, bool? isInstructorVerified, String? status, int? xp, String? cvUrl
});




}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? name = freezed,Object? email = freezed,Object? role = freezed,Object? gender = freezed,Object? avatarUrl = freezed,Object? isReceivePushNotification = freezed,Object? isInstructorVerified = freezed,Object? status = freezed,Object? xp = freezed,Object? cvUrl = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isReceivePushNotification: freezed == isReceivePushNotification ? _self.isReceivePushNotification : isReceivePushNotification // ignore: cast_nullable_to_non_nullable
as bool?,isInstructorVerified: freezed == isInstructorVerified ? _self.isInstructorVerified : isInstructorVerified // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,xp: freezed == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int?,cvUrl: freezed == cvUrl ? _self.cvUrl : cvUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String? name,  String? email,  String? role,  String? gender,  String? avatarUrl,  bool? isReceivePushNotification,  bool? isInstructorVerified,  String? status,  int? xp,  String? cvUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.userId,_that.name,_that.email,_that.role,_that.gender,_that.avatarUrl,_that.isReceivePushNotification,_that.isInstructorVerified,_that.status,_that.xp,_that.cvUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String? name,  String? email,  String? role,  String? gender,  String? avatarUrl,  bool? isReceivePushNotification,  bool? isInstructorVerified,  String? status,  int? xp,  String? cvUrl)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.userId,_that.name,_that.email,_that.role,_that.gender,_that.avatarUrl,_that.isReceivePushNotification,_that.isInstructorVerified,_that.status,_that.xp,_that.cvUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String? name,  String? email,  String? role,  String? gender,  String? avatarUrl,  bool? isReceivePushNotification,  bool? isInstructorVerified,  String? status,  int? xp,  String? cvUrl)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.userId,_that.name,_that.email,_that.role,_that.gender,_that.avatarUrl,_that.isReceivePushNotification,_that.isInstructorVerified,_that.status,_that.xp,_that.cvUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto implements UserDto {
  const _UserDto({required this.userId, this.name, this.email, this.role, this.gender, this.avatarUrl, this.isReceivePushNotification, this.isInstructorVerified, this.status, this.xp, this.cvUrl});
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

@override final  String userId;
@override final  String? name;
@override final  String? email;
@override final  String? role;
// USER, INSTRUCTOR, ADMIN
@override final  String? gender;
// MALE, FEMALE
@override final  String? avatarUrl;
@override final  bool? isReceivePushNotification;
@override final  bool? isInstructorVerified;
@override final  String? status;
// ACTIVE, BANNED, UNVERIFIED
@override final  int? xp;
@override final  String? cvUrl;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isReceivePushNotification, isReceivePushNotification) || other.isReceivePushNotification == isReceivePushNotification)&&(identical(other.isInstructorVerified, isInstructorVerified) || other.isInstructorVerified == isInstructorVerified)&&(identical(other.status, status) || other.status == status)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.cvUrl, cvUrl) || other.cvUrl == cvUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,email,role,gender,avatarUrl,isReceivePushNotification,isInstructorVerified,status,xp,cvUrl);

@override
String toString() {
  return 'UserDto(userId: $userId, name: $name, email: $email, role: $role, gender: $gender, avatarUrl: $avatarUrl, isReceivePushNotification: $isReceivePushNotification, isInstructorVerified: $isInstructorVerified, status: $status, xp: $xp, cvUrl: $cvUrl)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
 String userId, String? name, String? email, String? role, String? gender, String? avatarUrl, bool? isReceivePushNotification, bool? isInstructorVerified, String? status, int? xp, String? cvUrl
});




}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = freezed,Object? email = freezed,Object? role = freezed,Object? gender = freezed,Object? avatarUrl = freezed,Object? isReceivePushNotification = freezed,Object? isInstructorVerified = freezed,Object? status = freezed,Object? xp = freezed,Object? cvUrl = freezed,}) {
  return _then(_UserDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isReceivePushNotification: freezed == isReceivePushNotification ? _self.isReceivePushNotification : isReceivePushNotification // ignore: cast_nullable_to_non_nullable
as bool?,isInstructorVerified: freezed == isInstructorVerified ? _self.isInstructorVerified : isInstructorVerified // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,xp: freezed == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int?,cvUrl: freezed == cvUrl ? _self.cvUrl : cvUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
