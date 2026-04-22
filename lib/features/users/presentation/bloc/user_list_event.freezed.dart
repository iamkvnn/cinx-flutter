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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchUsers value)?  fetch,TResult Function( LoadMoreUsers value)?  loadMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchUsers() when fetch != null:
return fetch(_that);case LoadMoreUsers() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchUsers value)  fetch,required TResult Function( LoadMoreUsers value)  loadMore,}){
final _that = this;
switch (_that) {
case FetchUsers():
return fetch(_that);case LoadMoreUsers():
return loadMore(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchUsers value)?  fetch,TResult? Function( LoadMoreUsers value)?  loadMore,}){
final _that = this;
switch (_that) {
case FetchUsers() when fetch != null:
return fetch(_that);case LoadMoreUsers() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? query)?  fetch,TResult Function()?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchUsers() when fetch != null:
return fetch(_that.query);case LoadMoreUsers() when loadMore != null:
return loadMore();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? query)  fetch,required TResult Function()  loadMore,}) {final _that = this;
switch (_that) {
case FetchUsers():
return fetch(_that.query);case LoadMoreUsers():
return loadMore();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? query)?  fetch,TResult? Function()?  loadMore,}) {final _that = this;
switch (_that) {
case FetchUsers() when fetch != null:
return fetch(_that.query);case LoadMoreUsers() when loadMore != null:
return loadMore();case _:
  return null;

}
}

}

/// @nodoc


class FetchUsers implements UserListEvent {
  const FetchUsers({this.query});
  

 final  String? query;

/// Create a copy of UserListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchUsersCopyWith<FetchUsers> get copyWith => _$FetchUsersCopyWithImpl<FetchUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchUsers&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'UserListEvent.fetch(query: $query)';
}


}

/// @nodoc
abstract mixin class $FetchUsersCopyWith<$Res> implements $UserListEventCopyWith<$Res> {
  factory $FetchUsersCopyWith(FetchUsers value, $Res Function(FetchUsers) _then) = _$FetchUsersCopyWithImpl;
@useResult
$Res call({
 String? query
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
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(FetchUsers(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
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




// dart format on
