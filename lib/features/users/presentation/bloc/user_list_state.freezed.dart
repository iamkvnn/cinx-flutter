// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserListState {

 List<UserDto> get users; bool get isLoading; bool get isFetchingMore; bool get hasReachedMax; int get currentPage; String? get currentQuery; String? get errorMessage;
/// Create a copy of UserListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserListStateCopyWith<UserListState> get copyWith => _$UserListStateCopyWithImpl<UserListState>(this as UserListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserListState&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.currentQuery, currentQuery) || other.currentQuery == currentQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users),isLoading,isFetchingMore,hasReachedMax,currentPage,currentQuery,errorMessage);

@override
String toString() {
  return 'UserListState(users: $users, isLoading: $isLoading, isFetchingMore: $isFetchingMore, hasReachedMax: $hasReachedMax, currentPage: $currentPage, currentQuery: $currentQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $UserListStateCopyWith<$Res>  {
  factory $UserListStateCopyWith(UserListState value, $Res Function(UserListState) _then) = _$UserListStateCopyWithImpl;
@useResult
$Res call({
 List<UserDto> users, bool isLoading, bool isFetchingMore, bool hasReachedMax, int currentPage, String? currentQuery, String? errorMessage
});




}
/// @nodoc
class _$UserListStateCopyWithImpl<$Res>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._self, this._then);

  final UserListState _self;
  final $Res Function(UserListState) _then;

/// Create a copy of UserListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,Object? isLoading = null,Object? isFetchingMore = null,Object? hasReachedMax = null,Object? currentPage = null,Object? currentQuery = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,currentQuery: freezed == currentQuery ? _self.currentQuery : currentQuery // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserListState].
extension UserListStatePatterns on UserListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserListState value)  $default,){
final _that = this;
switch (_that) {
case _UserListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserListState value)?  $default,){
final _that = this;
switch (_that) {
case _UserListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserDto> users,  bool isLoading,  bool isFetchingMore,  bool hasReachedMax,  int currentPage,  String? currentQuery,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserListState() when $default != null:
return $default(_that.users,_that.isLoading,_that.isFetchingMore,_that.hasReachedMax,_that.currentPage,_that.currentQuery,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserDto> users,  bool isLoading,  bool isFetchingMore,  bool hasReachedMax,  int currentPage,  String? currentQuery,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _UserListState():
return $default(_that.users,_that.isLoading,_that.isFetchingMore,_that.hasReachedMax,_that.currentPage,_that.currentQuery,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserDto> users,  bool isLoading,  bool isFetchingMore,  bool hasReachedMax,  int currentPage,  String? currentQuery,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _UserListState() when $default != null:
return $default(_that.users,_that.isLoading,_that.isFetchingMore,_that.hasReachedMax,_that.currentPage,_that.currentQuery,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _UserListState implements UserListState {
  const _UserListState({final  List<UserDto> users = const [], this.isLoading = true, this.isFetchingMore = false, this.hasReachedMax = false, this.currentPage = 1, this.currentQuery, this.errorMessage}): _users = users;
  

 final  List<UserDto> _users;
@override@JsonKey() List<UserDto> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isFetchingMore;
@override@JsonKey() final  bool hasReachedMax;
@override@JsonKey() final  int currentPage;
@override final  String? currentQuery;
@override final  String? errorMessage;

/// Create a copy of UserListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserListStateCopyWith<_UserListState> get copyWith => __$UserListStateCopyWithImpl<_UserListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserListState&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.currentQuery, currentQuery) || other.currentQuery == currentQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),isLoading,isFetchingMore,hasReachedMax,currentPage,currentQuery,errorMessage);

@override
String toString() {
  return 'UserListState(users: $users, isLoading: $isLoading, isFetchingMore: $isFetchingMore, hasReachedMax: $hasReachedMax, currentPage: $currentPage, currentQuery: $currentQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$UserListStateCopyWith<$Res> implements $UserListStateCopyWith<$Res> {
  factory _$UserListStateCopyWith(_UserListState value, $Res Function(_UserListState) _then) = __$UserListStateCopyWithImpl;
@override @useResult
$Res call({
 List<UserDto> users, bool isLoading, bool isFetchingMore, bool hasReachedMax, int currentPage, String? currentQuery, String? errorMessage
});




}
/// @nodoc
class __$UserListStateCopyWithImpl<$Res>
    implements _$UserListStateCopyWith<$Res> {
  __$UserListStateCopyWithImpl(this._self, this._then);

  final _UserListState _self;
  final $Res Function(_UserListState) _then;

/// Create a copy of UserListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,Object? isLoading = null,Object? isFetchingMore = null,Object? hasReachedMax = null,Object? currentPage = null,Object? currentQuery = freezed,Object? errorMessage = freezed,}) {
  return _then(_UserListState(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserDto>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,currentQuery: freezed == currentQuery ? _self.currentQuery : currentQuery // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
