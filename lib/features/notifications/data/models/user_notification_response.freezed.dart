// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserNotificationResponse {

 String get id; String? get userId; String? get title; String? get message; bool? get isRead;
/// Create a copy of UserNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserNotificationResponseCopyWith<UserNotificationResponse> get copyWith => _$UserNotificationResponseCopyWithImpl<UserNotificationResponse>(this as UserNotificationResponse, _$identity);

  /// Serializes this UserNotificationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNotificationResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,message,isRead);

@override
String toString() {
  return 'UserNotificationResponse(id: $id, userId: $userId, title: $title, message: $message, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $UserNotificationResponseCopyWith<$Res>  {
  factory $UserNotificationResponseCopyWith(UserNotificationResponse value, $Res Function(UserNotificationResponse) _then) = _$UserNotificationResponseCopyWithImpl;
@useResult
$Res call({
 String id, String? userId, String? title, String? message, bool? isRead
});




}
/// @nodoc
class _$UserNotificationResponseCopyWithImpl<$Res>
    implements $UserNotificationResponseCopyWith<$Res> {
  _$UserNotificationResponseCopyWithImpl(this._self, this._then);

  final UserNotificationResponse _self;
  final $Res Function(UserNotificationResponse) _then;

/// Create a copy of UserNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? title = freezed,Object? message = freezed,Object? isRead = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,isRead: freezed == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserNotificationResponse].
extension UserNotificationResponsePatterns on UserNotificationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserNotificationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserNotificationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserNotificationResponse value)  $default,){
final _that = this;
switch (_that) {
case _UserNotificationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserNotificationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UserNotificationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? userId,  String? title,  String? message,  bool? isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserNotificationResponse() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.message,_that.isRead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? userId,  String? title,  String? message,  bool? isRead)  $default,) {final _that = this;
switch (_that) {
case _UserNotificationResponse():
return $default(_that.id,_that.userId,_that.title,_that.message,_that.isRead);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? userId,  String? title,  String? message,  bool? isRead)?  $default,) {final _that = this;
switch (_that) {
case _UserNotificationResponse() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.message,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserNotificationResponse implements UserNotificationResponse {
  const _UserNotificationResponse({required this.id, this.userId, this.title, this.message, this.isRead});
  factory _UserNotificationResponse.fromJson(Map<String, dynamic> json) => _$UserNotificationResponseFromJson(json);

@override final  String id;
@override final  String? userId;
@override final  String? title;
@override final  String? message;
@override final  bool? isRead;

/// Create a copy of UserNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserNotificationResponseCopyWith<_UserNotificationResponse> get copyWith => __$UserNotificationResponseCopyWithImpl<_UserNotificationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserNotificationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserNotificationResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,title,message,isRead);

@override
String toString() {
  return 'UserNotificationResponse(id: $id, userId: $userId, title: $title, message: $message, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$UserNotificationResponseCopyWith<$Res> implements $UserNotificationResponseCopyWith<$Res> {
  factory _$UserNotificationResponseCopyWith(_UserNotificationResponse value, $Res Function(_UserNotificationResponse) _then) = __$UserNotificationResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String? userId, String? title, String? message, bool? isRead
});




}
/// @nodoc
class __$UserNotificationResponseCopyWithImpl<$Res>
    implements _$UserNotificationResponseCopyWith<$Res> {
  __$UserNotificationResponseCopyWithImpl(this._self, this._then);

  final _UserNotificationResponse _self;
  final $Res Function(_UserNotificationResponse) _then;

/// Create a copy of UserNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? title = freezed,Object? message = freezed,Object? isRead = freezed,}) {
  return _then(_UserNotificationResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,isRead: freezed == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
