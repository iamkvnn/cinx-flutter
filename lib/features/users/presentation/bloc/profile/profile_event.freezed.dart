// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadProfile value)?  loadProfile,TResult Function( _UpdateProfile value)?  updateProfile,TResult Function( _UpdateAvatar value)?  updateAvatar,TResult Function( _ChangePassword value)?  changePassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that);case _ChangePassword() when changePassword != null:
return changePassword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadProfile value)  loadProfile,required TResult Function( _UpdateProfile value)  updateProfile,required TResult Function( _UpdateAvatar value)  updateAvatar,required TResult Function( _ChangePassword value)  changePassword,}){
final _that = this;
switch (_that) {
case _LoadProfile():
return loadProfile(_that);case _UpdateProfile():
return updateProfile(_that);case _UpdateAvatar():
return updateAvatar(_that);case _ChangePassword():
return changePassword(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadProfile value)?  loadProfile,TResult? Function( _UpdateProfile value)?  updateProfile,TResult? Function( _UpdateAvatar value)?  updateAvatar,TResult? Function( _ChangePassword value)?  changePassword,}){
final _that = this;
switch (_that) {
case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that);case _ChangePassword() when changePassword != null:
return changePassword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadProfile,TResult Function( String name,  String gender,  bool isReceivePushNotification,  String? avatarFileKey)?  updateProfile,TResult Function( String filePath,  String fileName,  String contentType)?  updateAvatar,TResult Function( String email,  String oldPassword,  String newPassword)?  changePassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadProfile() when loadProfile != null:
return loadProfile();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.name,_that.gender,_that.isReceivePushNotification,_that.avatarFileKey);case _UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that.filePath,_that.fileName,_that.contentType);case _ChangePassword() when changePassword != null:
return changePassword(_that.email,_that.oldPassword,_that.newPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadProfile,required TResult Function( String name,  String gender,  bool isReceivePushNotification,  String? avatarFileKey)  updateProfile,required TResult Function( String filePath,  String fileName,  String contentType)  updateAvatar,required TResult Function( String email,  String oldPassword,  String newPassword)  changePassword,}) {final _that = this;
switch (_that) {
case _LoadProfile():
return loadProfile();case _UpdateProfile():
return updateProfile(_that.name,_that.gender,_that.isReceivePushNotification,_that.avatarFileKey);case _UpdateAvatar():
return updateAvatar(_that.filePath,_that.fileName,_that.contentType);case _ChangePassword():
return changePassword(_that.email,_that.oldPassword,_that.newPassword);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadProfile,TResult? Function( String name,  String gender,  bool isReceivePushNotification,  String? avatarFileKey)?  updateProfile,TResult? Function( String filePath,  String fileName,  String contentType)?  updateAvatar,TResult? Function( String email,  String oldPassword,  String newPassword)?  changePassword,}) {final _that = this;
switch (_that) {
case _LoadProfile() when loadProfile != null:
return loadProfile();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.name,_that.gender,_that.isReceivePushNotification,_that.avatarFileKey);case _UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that.filePath,_that.fileName,_that.contentType);case _ChangePassword() when changePassword != null:
return changePassword(_that.email,_that.oldPassword,_that.newPassword);case _:
  return null;

}
}

}

/// @nodoc


class _LoadProfile implements ProfileEvent {
  const _LoadProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.loadProfile()';
}


}




/// @nodoc


class _UpdateProfile implements ProfileEvent {
  const _UpdateProfile({required this.name, required this.gender, required this.isReceivePushNotification, this.avatarFileKey});
  

 final  String name;
 final  String gender;
 final  bool isReceivePushNotification;
 final  String? avatarFileKey;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileCopyWith<_UpdateProfile> get copyWith => __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfile&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isReceivePushNotification, isReceivePushNotification) || other.isReceivePushNotification == isReceivePushNotification)&&(identical(other.avatarFileKey, avatarFileKey) || other.avatarFileKey == avatarFileKey));
}


@override
int get hashCode => Object.hash(runtimeType,name,gender,isReceivePushNotification,avatarFileKey);

@override
String toString() {
  return 'ProfileEvent.updateProfile(name: $name, gender: $gender, isReceivePushNotification: $isReceivePushNotification, avatarFileKey: $avatarFileKey)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(_UpdateProfile value, $Res Function(_UpdateProfile) _then) = __$UpdateProfileCopyWithImpl;
@useResult
$Res call({
 String name, String gender, bool isReceivePushNotification, String? avatarFileKey
});




}
/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(this._self, this._then);

  final _UpdateProfile _self;
  final $Res Function(_UpdateProfile) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? gender = null,Object? isReceivePushNotification = null,Object? avatarFileKey = freezed,}) {
  return _then(_UpdateProfile(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isReceivePushNotification: null == isReceivePushNotification ? _self.isReceivePushNotification : isReceivePushNotification // ignore: cast_nullable_to_non_nullable
as bool,avatarFileKey: freezed == avatarFileKey ? _self.avatarFileKey : avatarFileKey // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdateAvatar implements ProfileEvent {
  const _UpdateAvatar(this.filePath, this.fileName, this.contentType);
  

 final  String filePath;
 final  String fileName;
 final  String contentType;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateAvatarCopyWith<_UpdateAvatar> get copyWith => __$UpdateAvatarCopyWithImpl<_UpdateAvatar>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateAvatar&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}


@override
int get hashCode => Object.hash(runtimeType,filePath,fileName,contentType);

@override
String toString() {
  return 'ProfileEvent.updateAvatar(filePath: $filePath, fileName: $fileName, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$UpdateAvatarCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$UpdateAvatarCopyWith(_UpdateAvatar value, $Res Function(_UpdateAvatar) _then) = __$UpdateAvatarCopyWithImpl;
@useResult
$Res call({
 String filePath, String fileName, String contentType
});




}
/// @nodoc
class __$UpdateAvatarCopyWithImpl<$Res>
    implements _$UpdateAvatarCopyWith<$Res> {
  __$UpdateAvatarCopyWithImpl(this._self, this._then);

  final _UpdateAvatar _self;
  final $Res Function(_UpdateAvatar) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,Object? fileName = null,Object? contentType = null,}) {
  return _then(_UpdateAvatar(
null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,null == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ChangePassword implements ProfileEvent {
  const _ChangePassword(this.email, this.oldPassword, this.newPassword);
  

 final  String email;
 final  String oldPassword;
 final  String newPassword;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordCopyWith<_ChangePassword> get copyWith => __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePassword&&(identical(other.email, email) || other.email == email)&&(identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,email,oldPassword,newPassword);

@override
String toString() {
  return 'ProfileEvent.changePassword(email: $email, oldPassword: $oldPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(_ChangePassword value, $Res Function(_ChangePassword) _then) = __$ChangePasswordCopyWithImpl;
@useResult
$Res call({
 String email, String oldPassword, String newPassword
});




}
/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(this._self, this._then);

  final _ChangePassword _self;
  final $Res Function(_ChangePassword) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? oldPassword = null,Object? newPassword = null,}) {
  return _then(_ChangePassword(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,null == oldPassword ? _self.oldPassword : oldPassword // ignore: cast_nullable_to_non_nullable
as String,null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
