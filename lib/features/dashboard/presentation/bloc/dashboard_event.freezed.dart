// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardEvent {

 int? get year; int? get month;
/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardEventCopyWith<DashboardEvent> get copyWith => _$DashboardEventCopyWithImpl<DashboardEvent>(this as DashboardEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardEvent&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}


@override
int get hashCode => Object.hash(runtimeType,year,month);

@override
String toString() {
  return 'DashboardEvent(year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class $DashboardEventCopyWith<$Res>  {
  factory $DashboardEventCopyWith(DashboardEvent value, $Res Function(DashboardEvent) _then) = _$DashboardEventCopyWithImpl;
@useResult
$Res call({
 int? year, int? month
});




}
/// @nodoc
class _$DashboardEventCopyWithImpl<$Res>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._self, this._then);

  final DashboardEvent _self;
  final $Res Function(DashboardEvent) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? year = freezed,Object? month = freezed,}) {
  return _then(_self.copyWith(
year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardEvent].
extension DashboardEventPatterns on DashboardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchDashboardMetrics value)?  fetch,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchDashboardMetrics() when fetch != null:
return fetch(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchDashboardMetrics value)  fetch,}){
final _that = this;
switch (_that) {
case FetchDashboardMetrics():
return fetch(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchDashboardMetrics value)?  fetch,}){
final _that = this;
switch (_that) {
case FetchDashboardMetrics() when fetch != null:
return fetch(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? year,  int? month)?  fetch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchDashboardMetrics() when fetch != null:
return fetch(_that.year,_that.month);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? year,  int? month)  fetch,}) {final _that = this;
switch (_that) {
case FetchDashboardMetrics():
return fetch(_that.year,_that.month);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? year,  int? month)?  fetch,}) {final _that = this;
switch (_that) {
case FetchDashboardMetrics() when fetch != null:
return fetch(_that.year,_that.month);case _:
  return null;

}
}

}

/// @nodoc


class FetchDashboardMetrics implements DashboardEvent {
  const FetchDashboardMetrics({this.year, this.month});
  

@override final  int? year;
@override final  int? month;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchDashboardMetricsCopyWith<FetchDashboardMetrics> get copyWith => _$FetchDashboardMetricsCopyWithImpl<FetchDashboardMetrics>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchDashboardMetrics&&(identical(other.year, year) || other.year == year)&&(identical(other.month, month) || other.month == month));
}


@override
int get hashCode => Object.hash(runtimeType,year,month);

@override
String toString() {
  return 'DashboardEvent.fetch(year: $year, month: $month)';
}


}

/// @nodoc
abstract mixin class $FetchDashboardMetricsCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory $FetchDashboardMetricsCopyWith(FetchDashboardMetrics value, $Res Function(FetchDashboardMetrics) _then) = _$FetchDashboardMetricsCopyWithImpl;
@override @useResult
$Res call({
 int? year, int? month
});




}
/// @nodoc
class _$FetchDashboardMetricsCopyWithImpl<$Res>
    implements $FetchDashboardMetricsCopyWith<$Res> {
  _$FetchDashboardMetricsCopyWithImpl(this._self, this._then);

  final FetchDashboardMetrics _self;
  final $Res Function(FetchDashboardMetrics) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? year = freezed,Object? month = freezed,}) {
  return _then(FetchDashboardMetrics(
year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
