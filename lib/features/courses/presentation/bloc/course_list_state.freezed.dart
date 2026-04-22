// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseListState {

 List<CourseResponse> get courses; bool get isLoading;// Initial loading vs load more
 bool get isFetchingMore; bool get hasReachedMax; int get currentPage; String? get currentQuery; String? get currentStatus; String? get currentCategoryId; Map<String, String>? get currentSort; String? get errorMessage;
/// Create a copy of CourseListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseListStateCopyWith<CourseListState> get copyWith => _$CourseListStateCopyWithImpl<CourseListState>(this as CourseListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseListState&&const DeepCollectionEquality().equals(other.courses, courses)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.currentQuery, currentQuery) || other.currentQuery == currentQuery)&&(identical(other.currentStatus, currentStatus) || other.currentStatus == currentStatus)&&(identical(other.currentCategoryId, currentCategoryId) || other.currentCategoryId == currentCategoryId)&&const DeepCollectionEquality().equals(other.currentSort, currentSort)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(courses),isLoading,isFetchingMore,hasReachedMax,currentPage,currentQuery,currentStatus,currentCategoryId,const DeepCollectionEquality().hash(currentSort),errorMessage);

@override
String toString() {
  return 'CourseListState(courses: $courses, isLoading: $isLoading, isFetchingMore: $isFetchingMore, hasReachedMax: $hasReachedMax, currentPage: $currentPage, currentQuery: $currentQuery, currentStatus: $currentStatus, currentCategoryId: $currentCategoryId, currentSort: $currentSort, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CourseListStateCopyWith<$Res>  {
  factory $CourseListStateCopyWith(CourseListState value, $Res Function(CourseListState) _then) = _$CourseListStateCopyWithImpl;
@useResult
$Res call({
 List<CourseResponse> courses, bool isLoading, bool isFetchingMore, bool hasReachedMax, int currentPage, String? currentQuery, String? currentStatus, String? currentCategoryId, Map<String, String>? currentSort, String? errorMessage
});




}
/// @nodoc
class _$CourseListStateCopyWithImpl<$Res>
    implements $CourseListStateCopyWith<$Res> {
  _$CourseListStateCopyWithImpl(this._self, this._then);

  final CourseListState _self;
  final $Res Function(CourseListState) _then;

/// Create a copy of CourseListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courses = null,Object? isLoading = null,Object? isFetchingMore = null,Object? hasReachedMax = null,Object? currentPage = null,Object? currentQuery = freezed,Object? currentStatus = freezed,Object? currentCategoryId = freezed,Object? currentSort = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
courses: null == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,currentQuery: freezed == currentQuery ? _self.currentQuery : currentQuery // ignore: cast_nullable_to_non_nullable
as String?,currentStatus: freezed == currentStatus ? _self.currentStatus : currentStatus // ignore: cast_nullable_to_non_nullable
as String?,currentCategoryId: freezed == currentCategoryId ? _self.currentCategoryId : currentCategoryId // ignore: cast_nullable_to_non_nullable
as String?,currentSort: freezed == currentSort ? _self.currentSort : currentSort // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseListState].
extension CourseListStatePatterns on CourseListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseListState value)  $default,){
final _that = this;
switch (_that) {
case _CourseListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseListState value)?  $default,){
final _that = this;
switch (_that) {
case _CourseListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CourseResponse> courses,  bool isLoading,  bool isFetchingMore,  bool hasReachedMax,  int currentPage,  String? currentQuery,  String? currentStatus,  String? currentCategoryId,  Map<String, String>? currentSort,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseListState() when $default != null:
return $default(_that.courses,_that.isLoading,_that.isFetchingMore,_that.hasReachedMax,_that.currentPage,_that.currentQuery,_that.currentStatus,_that.currentCategoryId,_that.currentSort,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CourseResponse> courses,  bool isLoading,  bool isFetchingMore,  bool hasReachedMax,  int currentPage,  String? currentQuery,  String? currentStatus,  String? currentCategoryId,  Map<String, String>? currentSort,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CourseListState():
return $default(_that.courses,_that.isLoading,_that.isFetchingMore,_that.hasReachedMax,_that.currentPage,_that.currentQuery,_that.currentStatus,_that.currentCategoryId,_that.currentSort,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CourseResponse> courses,  bool isLoading,  bool isFetchingMore,  bool hasReachedMax,  int currentPage,  String? currentQuery,  String? currentStatus,  String? currentCategoryId,  Map<String, String>? currentSort,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CourseListState() when $default != null:
return $default(_that.courses,_that.isLoading,_that.isFetchingMore,_that.hasReachedMax,_that.currentPage,_that.currentQuery,_that.currentStatus,_that.currentCategoryId,_that.currentSort,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CourseListState implements CourseListState {
  const _CourseListState({final  List<CourseResponse> courses = const [], this.isLoading = true, this.isFetchingMore = false, this.hasReachedMax = false, this.currentPage = 1, this.currentQuery, this.currentStatus, this.currentCategoryId, final  Map<String, String>? currentSort, this.errorMessage}): _courses = courses,_currentSort = currentSort;
  

 final  List<CourseResponse> _courses;
@override@JsonKey() List<CourseResponse> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}

@override@JsonKey() final  bool isLoading;
// Initial loading vs load more
@override@JsonKey() final  bool isFetchingMore;
@override@JsonKey() final  bool hasReachedMax;
@override@JsonKey() final  int currentPage;
@override final  String? currentQuery;
@override final  String? currentStatus;
@override final  String? currentCategoryId;
 final  Map<String, String>? _currentSort;
@override Map<String, String>? get currentSort {
  final value = _currentSort;
  if (value == null) return null;
  if (_currentSort is EqualUnmodifiableMapView) return _currentSort;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? errorMessage;

/// Create a copy of CourseListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseListStateCopyWith<_CourseListState> get copyWith => __$CourseListStateCopyWithImpl<_CourseListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseListState&&const DeepCollectionEquality().equals(other._courses, _courses)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.currentQuery, currentQuery) || other.currentQuery == currentQuery)&&(identical(other.currentStatus, currentStatus) || other.currentStatus == currentStatus)&&(identical(other.currentCategoryId, currentCategoryId) || other.currentCategoryId == currentCategoryId)&&const DeepCollectionEquality().equals(other._currentSort, _currentSort)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_courses),isLoading,isFetchingMore,hasReachedMax,currentPage,currentQuery,currentStatus,currentCategoryId,const DeepCollectionEquality().hash(_currentSort),errorMessage);

@override
String toString() {
  return 'CourseListState(courses: $courses, isLoading: $isLoading, isFetchingMore: $isFetchingMore, hasReachedMax: $hasReachedMax, currentPage: $currentPage, currentQuery: $currentQuery, currentStatus: $currentStatus, currentCategoryId: $currentCategoryId, currentSort: $currentSort, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CourseListStateCopyWith<$Res> implements $CourseListStateCopyWith<$Res> {
  factory _$CourseListStateCopyWith(_CourseListState value, $Res Function(_CourseListState) _then) = __$CourseListStateCopyWithImpl;
@override @useResult
$Res call({
 List<CourseResponse> courses, bool isLoading, bool isFetchingMore, bool hasReachedMax, int currentPage, String? currentQuery, String? currentStatus, String? currentCategoryId, Map<String, String>? currentSort, String? errorMessage
});




}
/// @nodoc
class __$CourseListStateCopyWithImpl<$Res>
    implements _$CourseListStateCopyWith<$Res> {
  __$CourseListStateCopyWithImpl(this._self, this._then);

  final _CourseListState _self;
  final $Res Function(_CourseListState) _then;

/// Create a copy of CourseListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courses = null,Object? isLoading = null,Object? isFetchingMore = null,Object? hasReachedMax = null,Object? currentPage = null,Object? currentQuery = freezed,Object? currentStatus = freezed,Object? currentCategoryId = freezed,Object? currentSort = freezed,Object? errorMessage = freezed,}) {
  return _then(_CourseListState(
courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,currentQuery: freezed == currentQuery ? _self.currentQuery : currentQuery // ignore: cast_nullable_to_non_nullable
as String?,currentStatus: freezed == currentStatus ? _self.currentStatus : currentStatus // ignore: cast_nullable_to_non_nullable
as String?,currentCategoryId: freezed == currentCategoryId ? _self.currentCategoryId : currentCategoryId // ignore: cast_nullable_to_non_nullable
as String?,currentSort: freezed == currentSort ? _self._currentSort : currentSort // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
