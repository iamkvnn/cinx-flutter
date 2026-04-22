// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _UpdateSuccess value)?  updateSuccess,TResult Function( _AvatarUploaded value)?  avatarUploaded,TResult Function( _OtpSent value)?  otpSent,TResult Function( _PasswordChangedSuccess value)?  passwordChangedSuccess,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _UpdateSuccess() when updateSuccess != null:
return updateSuccess(_that);case _AvatarUploaded() when avatarUploaded != null:
return avatarUploaded(_that);case _OtpSent() when otpSent != null:
return otpSent(_that);case _PasswordChangedSuccess() when passwordChangedSuccess != null:
return passwordChangedSuccess(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _UpdateSuccess value)  updateSuccess,required TResult Function( _AvatarUploaded value)  avatarUploaded,required TResult Function( _OtpSent value)  otpSent,required TResult Function( _PasswordChangedSuccess value)  passwordChangedSuccess,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _UpdateSuccess():
return updateSuccess(_that);case _AvatarUploaded():
return avatarUploaded(_that);case _OtpSent():
return otpSent(_that);case _PasswordChangedSuccess():
return passwordChangedSuccess(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _UpdateSuccess value)?  updateSuccess,TResult? Function( _AvatarUploaded value)?  avatarUploaded,TResult? Function( _OtpSent value)?  otpSent,TResult? Function( _PasswordChangedSuccess value)?  passwordChangedSuccess,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _UpdateSuccess() when updateSuccess != null:
return updateSuccess(_that);case _AvatarUploaded() when avatarUploaded != null:
return avatarUploaded(_that);case _OtpSent() when otpSent != null:
return otpSent(_that);case _PasswordChangedSuccess() when passwordChangedSuccess != null:
return passwordChangedSuccess(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserDto user)?  loaded,TResult Function()?  updateSuccess,TResult Function( String fileKey)?  avatarUploaded,TResult Function()?  otpSent,TResult Function()?  passwordChangedSuccess,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.user);case _UpdateSuccess() when updateSuccess != null:
return updateSuccess();case _AvatarUploaded() when avatarUploaded != null:
return avatarUploaded(_that.fileKey);case _OtpSent() when otpSent != null:
return otpSent();case _PasswordChangedSuccess() when passwordChangedSuccess != null:
return passwordChangedSuccess();case _Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserDto user)  loaded,required TResult Function()  updateSuccess,required TResult Function( String fileKey)  avatarUploaded,required TResult Function()  otpSent,required TResult Function()  passwordChangedSuccess,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.user);case _UpdateSuccess():
return updateSuccess();case _AvatarUploaded():
return avatarUploaded(_that.fileKey);case _OtpSent():
return otpSent();case _PasswordChangedSuccess():
return passwordChangedSuccess();case _Failure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserDto user)?  loaded,TResult? Function()?  updateSuccess,TResult? Function( String fileKey)?  avatarUploaded,TResult? Function()?  otpSent,TResult? Function()?  passwordChangedSuccess,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.user);case _UpdateSuccess() when updateSuccess != null:
return updateSuccess();case _AvatarUploaded() when avatarUploaded != null:
return avatarUploaded(_that.fileKey);case _OtpSent() when otpSent != null:
return otpSent();case _PasswordChangedSuccess() when passwordChangedSuccess != null:
return passwordChangedSuccess();case _Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ProfileState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.initial()';
}


}




/// @nodoc


class _Loading implements ProfileState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.loading()';
}


}




/// @nodoc


class _Loaded implements ProfileState {
  const _Loaded(this.user);
  

 final  UserDto user;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileState.loaded(user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 UserDto user
});


$UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_Loaded(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _UpdateSuccess implements ProfileState {
  const _UpdateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.updateSuccess()';
}


}




/// @nodoc


class _AvatarUploaded implements ProfileState {
  const _AvatarUploaded(this.fileKey);
  

 final  String fileKey;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvatarUploadedCopyWith<_AvatarUploaded> get copyWith => __$AvatarUploadedCopyWithImpl<_AvatarUploaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvatarUploaded&&(identical(other.fileKey, fileKey) || other.fileKey == fileKey));
}


@override
int get hashCode => Object.hash(runtimeType,fileKey);

@override
String toString() {
  return 'ProfileState.avatarUploaded(fileKey: $fileKey)';
}


}

/// @nodoc
abstract mixin class _$AvatarUploadedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$AvatarUploadedCopyWith(_AvatarUploaded value, $Res Function(_AvatarUploaded) _then) = __$AvatarUploadedCopyWithImpl;
@useResult
$Res call({
 String fileKey
});




}
/// @nodoc
class __$AvatarUploadedCopyWithImpl<$Res>
    implements _$AvatarUploadedCopyWith<$Res> {
  __$AvatarUploadedCopyWithImpl(this._self, this._then);

  final _AvatarUploaded _self;
  final $Res Function(_AvatarUploaded) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fileKey = null,}) {
  return _then(_AvatarUploaded(
null == fileKey ? _self.fileKey : fileKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OtpSent implements ProfileState {
  const _OtpSent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpSent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.otpSent()';
}


}




/// @nodoc


class _PasswordChangedSuccess implements ProfileState {
  const _PasswordChangedSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasswordChangedSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.passwordChangedSuccess()';
}


}




/// @nodoc


class _Failure implements ProfileState {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProfileState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
