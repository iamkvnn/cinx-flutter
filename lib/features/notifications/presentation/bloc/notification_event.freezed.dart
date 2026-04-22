// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent()';
}


}

/// @nodoc
class $NotificationEventCopyWith<$Res>  {
$NotificationEventCopyWith(NotificationEvent _, $Res Function(NotificationEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchNotifications value)?  fetch,TResult Function( LoadMoreNotifications value)?  loadMore,TResult Function( FetchUnreadCount value)?  fetchUnreadCount,TResult Function( ToggleRead value)?  toggleRead,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchNotifications() when fetch != null:
return fetch(_that);case LoadMoreNotifications() when loadMore != null:
return loadMore(_that);case FetchUnreadCount() when fetchUnreadCount != null:
return fetchUnreadCount(_that);case ToggleRead() when toggleRead != null:
return toggleRead(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchNotifications value)  fetch,required TResult Function( LoadMoreNotifications value)  loadMore,required TResult Function( FetchUnreadCount value)  fetchUnreadCount,required TResult Function( ToggleRead value)  toggleRead,}){
final _that = this;
switch (_that) {
case FetchNotifications():
return fetch(_that);case LoadMoreNotifications():
return loadMore(_that);case FetchUnreadCount():
return fetchUnreadCount(_that);case ToggleRead():
return toggleRead(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchNotifications value)?  fetch,TResult? Function( LoadMoreNotifications value)?  loadMore,TResult? Function( FetchUnreadCount value)?  fetchUnreadCount,TResult? Function( ToggleRead value)?  toggleRead,}){
final _that = this;
switch (_that) {
case FetchNotifications() when fetch != null:
return fetch(_that);case LoadMoreNotifications() when loadMore != null:
return loadMore(_that);case FetchUnreadCount() when fetchUnreadCount != null:
return fetchUnreadCount(_that);case ToggleRead() when toggleRead != null:
return toggleRead(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetch,TResult Function()?  loadMore,TResult Function()?  fetchUnreadCount,TResult Function( String id)?  toggleRead,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchNotifications() when fetch != null:
return fetch();case LoadMoreNotifications() when loadMore != null:
return loadMore();case FetchUnreadCount() when fetchUnreadCount != null:
return fetchUnreadCount();case ToggleRead() when toggleRead != null:
return toggleRead(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetch,required TResult Function()  loadMore,required TResult Function()  fetchUnreadCount,required TResult Function( String id)  toggleRead,}) {final _that = this;
switch (_that) {
case FetchNotifications():
return fetch();case LoadMoreNotifications():
return loadMore();case FetchUnreadCount():
return fetchUnreadCount();case ToggleRead():
return toggleRead(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetch,TResult? Function()?  loadMore,TResult? Function()?  fetchUnreadCount,TResult? Function( String id)?  toggleRead,}) {final _that = this;
switch (_that) {
case FetchNotifications() when fetch != null:
return fetch();case LoadMoreNotifications() when loadMore != null:
return loadMore();case FetchUnreadCount() when fetchUnreadCount != null:
return fetchUnreadCount();case ToggleRead() when toggleRead != null:
return toggleRead(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class FetchNotifications implements NotificationEvent {
  const FetchNotifications();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchNotifications);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.fetch()';
}


}




/// @nodoc


class LoadMoreNotifications implements NotificationEvent {
  const LoadMoreNotifications();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreNotifications);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.loadMore()';
}


}




/// @nodoc


class FetchUnreadCount implements NotificationEvent {
  const FetchUnreadCount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchUnreadCount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.fetchUnreadCount()';
}


}




/// @nodoc


class ToggleRead implements NotificationEvent {
  const ToggleRead(this.id);
  

 final  String id;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleReadCopyWith<ToggleRead> get copyWith => _$ToggleReadCopyWithImpl<ToggleRead>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleRead&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'NotificationEvent.toggleRead(id: $id)';
}


}

/// @nodoc
abstract mixin class $ToggleReadCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $ToggleReadCopyWith(ToggleRead value, $Res Function(ToggleRead) _then) = _$ToggleReadCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$ToggleReadCopyWithImpl<$Res>
    implements $ToggleReadCopyWith<$Res> {
  _$ToggleReadCopyWithImpl(this._self, this._then);

  final ToggleRead _self;
  final $Res Function(ToggleRead) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ToggleRead(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
