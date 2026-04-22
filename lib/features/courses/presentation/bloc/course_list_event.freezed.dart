// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseListEvent()';
}


}

/// @nodoc
class $CourseListEventCopyWith<$Res>  {
$CourseListEventCopyWith(CourseListEvent _, $Res Function(CourseListEvent) __);
}


/// Adds pattern-matching-related methods to [CourseListEvent].
extension CourseListEventPatterns on CourseListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchCourses value)?  fetchCourses,TResult Function( LoadMore value)?  loadMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchCourses() when fetchCourses != null:
return fetchCourses(_that);case LoadMore() when loadMore != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchCourses value)  fetchCourses,required TResult Function( LoadMore value)  loadMore,}){
final _that = this;
switch (_that) {
case FetchCourses():
return fetchCourses(_that);case LoadMore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchCourses value)?  fetchCourses,TResult? Function( LoadMore value)?  loadMore,}){
final _that = this;
switch (_that) {
case FetchCourses() when fetchCourses != null:
return fetchCourses(_that);case LoadMore() when loadMore != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? query,  String? status,  String? categoryId,  Map<String, String>? sort)?  fetchCourses,TResult Function()?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchCourses() when fetchCourses != null:
return fetchCourses(_that.query,_that.status,_that.categoryId,_that.sort);case LoadMore() when loadMore != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? query,  String? status,  String? categoryId,  Map<String, String>? sort)  fetchCourses,required TResult Function()  loadMore,}) {final _that = this;
switch (_that) {
case FetchCourses():
return fetchCourses(_that.query,_that.status,_that.categoryId,_that.sort);case LoadMore():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? query,  String? status,  String? categoryId,  Map<String, String>? sort)?  fetchCourses,TResult? Function()?  loadMore,}) {final _that = this;
switch (_that) {
case FetchCourses() when fetchCourses != null:
return fetchCourses(_that.query,_that.status,_that.categoryId,_that.sort);case LoadMore() when loadMore != null:
return loadMore();case _:
  return null;

}
}

}

/// @nodoc


class FetchCourses implements CourseListEvent {
  const FetchCourses({this.query, this.status, this.categoryId, final  Map<String, String>? sort}): _sort = sort;
  

 final  String? query;
 final  String? status;
 final  String? categoryId;
 final  Map<String, String>? _sort;
 Map<String, String>? get sort {
  final value = _sort;
  if (value == null) return null;
  if (_sort is EqualUnmodifiableMapView) return _sort;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of CourseListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchCoursesCopyWith<FetchCourses> get copyWith => _$FetchCoursesCopyWithImpl<FetchCourses>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCourses&&(identical(other.query, query) || other.query == query)&&(identical(other.status, status) || other.status == status)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&const DeepCollectionEquality().equals(other._sort, _sort));
}


@override
int get hashCode => Object.hash(runtimeType,query,status,categoryId,const DeepCollectionEquality().hash(_sort));

@override
String toString() {
  return 'CourseListEvent.fetchCourses(query: $query, status: $status, categoryId: $categoryId, sort: $sort)';
}


}

/// @nodoc
abstract mixin class $FetchCoursesCopyWith<$Res> implements $CourseListEventCopyWith<$Res> {
  factory $FetchCoursesCopyWith(FetchCourses value, $Res Function(FetchCourses) _then) = _$FetchCoursesCopyWithImpl;
@useResult
$Res call({
 String? query, String? status, String? categoryId, Map<String, String>? sort
});




}
/// @nodoc
class _$FetchCoursesCopyWithImpl<$Res>
    implements $FetchCoursesCopyWith<$Res> {
  _$FetchCoursesCopyWithImpl(this._self, this._then);

  final FetchCourses _self;
  final $Res Function(FetchCourses) _then;

/// Create a copy of CourseListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? status = freezed,Object? categoryId = freezed,Object? sort = freezed,}) {
  return _then(FetchCourses(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self._sort : sort // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

/// @nodoc


class LoadMore implements CourseListEvent {
  const LoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseListEvent.loadMore()';
}


}




// dart format on
