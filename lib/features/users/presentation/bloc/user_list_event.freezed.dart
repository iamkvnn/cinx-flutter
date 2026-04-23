// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserListEvent()';
}


}

/// @nodoc
class $UserListEventCopyWith<$Res>  {
$UserListEventCopyWith(UserListEvent _, $Res Function(UserListEvent) __);
}


/// Adds pattern-matching-related methods to [UserListEvent].
extension UserListEventPatterns on UserListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchUsers value)?  fetch,TResult Function( LoadMoreUsers value)?  loadMore,TResult Function( BanUser value)?  banUser,TResult Function( UnbanUser value)?  unbanUser,TResult Function( VerifyInstructor value)?  verifyInstructor,TResult Function( RejectInstructor value)?  rejectInstructor,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchUsers() when fetch != null:
return fetch(_that);case LoadMoreUsers() when loadMore != null:
return loadMore(_that);case BanUser() when banUser != null:
return banUser(_that);case UnbanUser() when unbanUser != null:
return unbanUser(_that);case VerifyInstructor() when verifyInstructor != null:
return verifyInstructor(_that);case RejectInstructor() when rejectInstructor != null:
return rejectInstructor(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchUsers value)  fetch,required TResult Function( LoadMoreUsers value)  loadMore,required TResult Function( BanUser value)  banUser,required TResult Function( UnbanUser value)  unbanUser,required TResult Function( VerifyInstructor value)  verifyInstructor,required TResult Function( RejectInstructor value)  rejectInstructor,}){
final _that = this;
switch (_that) {
case FetchUsers():
return fetch(_that);case LoadMoreUsers():
return loadMore(_that);case BanUser():
return banUser(_that);case UnbanUser():
return unbanUser(_that);case VerifyInstructor():
return verifyInstructor(_that);case RejectInstructor():
return rejectInstructor(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchUsers value)?  fetch,TResult? Function( LoadMoreUsers value)?  loadMore,TResult? Function( BanUser value)?  banUser,TResult? Function( UnbanUser value)?  unbanUser,TResult? Function( VerifyInstructor value)?  verifyInstructor,TResult? Function( RejectInstructor value)?  rejectInstructor,}){
final _that = this;
switch (_that) {
case FetchUsers() when fetch != null:
return fetch(_that);case LoadMoreUsers() when loadMore != null:
return loadMore(_that);case BanUser() when banUser != null:
return banUser(_that);case UnbanUser() when unbanUser != null:
return unbanUser(_that);case VerifyInstructor() when verifyInstructor != null:
return verifyInstructor(_that);case RejectInstructor() when rejectInstructor != null:
return rejectInstructor(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? query,  String? role,  bool? isInstructorVerified,  Map<String, String>? sort)?  fetch,TResult Function()?  loadMore,TResult Function( String id,  String reason)?  banUser,TResult Function( String id)?  unbanUser,TResult Function( String id)?  verifyInstructor,TResult Function( String id,  String reason)?  rejectInstructor,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchUsers() when fetch != null:
return fetch(_that.query,_that.role,_that.isInstructorVerified,_that.sort);case LoadMoreUsers() when loadMore != null:
return loadMore();case BanUser() when banUser != null:
return banUser(_that.id,_that.reason);case UnbanUser() when unbanUser != null:
return unbanUser(_that.id);case VerifyInstructor() when verifyInstructor != null:
return verifyInstructor(_that.id);case RejectInstructor() when rejectInstructor != null:
return rejectInstructor(_that.id,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? query,  String? role,  bool? isInstructorVerified,  Map<String, String>? sort)  fetch,required TResult Function()  loadMore,required TResult Function( String id,  String reason)  banUser,required TResult Function( String id)  unbanUser,required TResult Function( String id)  verifyInstructor,required TResult Function( String id,  String reason)  rejectInstructor,}) {final _that = this;
switch (_that) {
case FetchUsers():
return fetch(_that.query,_that.role,_that.isInstructorVerified,_that.sort);case LoadMoreUsers():
return loadMore();case BanUser():
return banUser(_that.id,_that.reason);case UnbanUser():
return unbanUser(_that.id);case VerifyInstructor():
return verifyInstructor(_that.id);case RejectInstructor():
return rejectInstructor(_that.id,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? query,  String? role,  bool? isInstructorVerified,  Map<String, String>? sort)?  fetch,TResult? Function()?  loadMore,TResult? Function( String id,  String reason)?  banUser,TResult? Function( String id)?  unbanUser,TResult? Function( String id)?  verifyInstructor,TResult? Function( String id,  String reason)?  rejectInstructor,}) {final _that = this;
switch (_that) {
case FetchUsers() when fetch != null:
return fetch(_that.query,_that.role,_that.isInstructorVerified,_that.sort);case LoadMoreUsers() when loadMore != null:
return loadMore();case BanUser() when banUser != null:
return banUser(_that.id,_that.reason);case UnbanUser() when unbanUser != null:
return unbanUser(_that.id);case VerifyInstructor() when verifyInstructor != null:
return verifyInstructor(_that.id);case RejectInstructor() when rejectInstructor != null:
return rejectInstructor(_that.id,_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class FetchUsers implements UserListEvent {
  const FetchUsers({this.query, this.role, this.isInstructorVerified, final  Map<String, String>? sort}): _sort = sort;
  

 final  String? query;
 final  String? role;
 final  bool? isInstructorVerified;
 final  Map<String, String>? _sort;
 Map<String, String>? get sort {
  final value = _sort;
  if (value == null) return null;
  if (_sort is EqualUnmodifiableMapView) return _sort;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchUsersCopyWith<FetchUsers> get copyWith => _$FetchUsersCopyWithImpl<FetchUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchUsers&&(identical(other.query, query) || other.query == query)&&(identical(other.role, role) || other.role == role)&&(identical(other.isInstructorVerified, isInstructorVerified) || other.isInstructorVerified == isInstructorVerified)&&const DeepCollectionEquality().equals(other._sort, _sort));
}


@override
int get hashCode => Object.hash(runtimeType,query,role,isInstructorVerified,const DeepCollectionEquality().hash(_sort));

@override
String toString() {
  return 'UserListEvent.fetch(query: $query, role: $role, isInstructorVerified: $isInstructorVerified, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $FetchUsersCopyWith<$Res> implements $UserListEventCopyWith<$Res> {
  factory $FetchUsersCopyWith(FetchUsers value, $Res Function(FetchUsers) _then) = _$FetchUsersCopyWithImpl;
@useResult
$Res call({
 String? query, String? role, bool? isInstructorVerified, Map<String, String>? sort
});




}
/// @nodoc
class _$FetchUsersCopyWithImpl<$Res>
    implements $FetchUsersCopyWith<$Res> {
  _$FetchUsersCopyWithImpl(this._self, this._then);

  final FetchUsers _self;
  final $Res Function(FetchUsers) _then;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? role = freezed,Object? isInstructorVerified = freezed,Object? sort = freezed,}) {
  return _then(FetchUsers(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,isInstructorVerified: freezed == isInstructorVerified ? _self.isInstructorVerified : isInstructorVerified // ignore: cast_nullable_to_non_nullable
as bool?,sort: freezed == sort ? _self._sort : sort // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

/// @nodoc


class LoadMoreUsers implements UserListEvent {
  const LoadMoreUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserListEvent.loadMore()';
}


}




/// @nodoc


class BanUser implements UserListEvent {
  const BanUser({required this.id, required this.reason});
  

 final  String id;
 final  String reason;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BanUserCopyWith<BanUser> get copyWith => _$BanUserCopyWithImpl<BanUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BanUser&&(identical(other.id, id) || other.id == id)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,id,reason);

@override
String toString() {
  return 'UserListEvent.banUser(id: $id, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $BanUserCopyWith<$Res> implements $UserListEventCopyWith<$Res> {
  factory $BanUserCopyWith(BanUser value, $Res Function(BanUser) _then) = _$BanUserCopyWithImpl;
@useResult
$Res call({
 String id, String reason
});




}
/// @nodoc
class _$BanUserCopyWithImpl<$Res>
    implements $BanUserCopyWith<$Res> {
  _$BanUserCopyWithImpl(this._self, this._then);

  final BanUser _self;
  final $Res Function(BanUser) _then;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reason = null,}) {
  return _then(BanUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnbanUser implements UserListEvent {
  const UnbanUser({required this.id});
  

 final  String id;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnbanUserCopyWith<UnbanUser> get copyWith => _$UnbanUserCopyWithImpl<UnbanUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnbanUser&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'UserListEvent.unbanUser(id: $id)';
}


}

/// @nodoc
abstract mixin class $UnbanUserCopyWith<$Res> implements $UserListEventCopyWith<$Res> {
  factory $UnbanUserCopyWith(UnbanUser value, $Res Function(UnbanUser) _then) = _$UnbanUserCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$UnbanUserCopyWithImpl<$Res>
    implements $UnbanUserCopyWith<$Res> {
  _$UnbanUserCopyWithImpl(this._self, this._then);

  final UnbanUser _self;
  final $Res Function(UnbanUser) _then;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(UnbanUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class VerifyInstructor implements UserListEvent {
  const VerifyInstructor({required this.id});
  

 final  String id;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyInstructorCopyWith<VerifyInstructor> get copyWith => _$VerifyInstructorCopyWithImpl<VerifyInstructor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyInstructor&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'UserListEvent.verifyInstructor(id: $id)';
}


}

/// @nodoc
abstract mixin class $VerifyInstructorCopyWith<$Res> implements $UserListEventCopyWith<$Res> {
  factory $VerifyInstructorCopyWith(VerifyInstructor value, $Res Function(VerifyInstructor) _then) = _$VerifyInstructorCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$VerifyInstructorCopyWithImpl<$Res>
    implements $VerifyInstructorCopyWith<$Res> {
  _$VerifyInstructorCopyWithImpl(this._self, this._then);

  final VerifyInstructor _self;
  final $Res Function(VerifyInstructor) _then;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(VerifyInstructor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RejectInstructor implements UserListEvent {
  const RejectInstructor({required this.id, required this.reason});
  

 final  String id;
 final  String reason;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RejectInstructorCopyWith<RejectInstructor> get copyWith => _$RejectInstructorCopyWithImpl<RejectInstructor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RejectInstructor&&(identical(other.id, id) || other.id == id)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,id,reason);

@override
String toString() {
  return 'UserListEvent.rejectInstructor(id: $id, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $RejectInstructorCopyWith<$Res> implements $UserListEventCopyWith<$Res> {
  factory $RejectInstructorCopyWith(RejectInstructor value, $Res Function(RejectInstructor) _then) = _$RejectInstructorCopyWithImpl;
@useResult
$Res call({
 String id, String reason
});




}
/// @nodoc
class _$RejectInstructorCopyWithImpl<$Res>
    implements $RejectInstructorCopyWith<$Res> {
  _$RejectInstructorCopyWithImpl(this._self, this._then);

  final RejectInstructor _self;
  final $Res Function(RejectInstructor) _then;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? reason = null,}) {
  return _then(RejectInstructor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
