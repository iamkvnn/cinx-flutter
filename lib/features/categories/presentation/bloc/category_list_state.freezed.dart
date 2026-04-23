// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryListState {

 bool get isLoading; String? get errorMessage; List<CategoryResponse> get categories; bool get isActionLoading; String? get actionSuccessMessage; String? get actionErrorMessage;
/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryListStateCopyWith<CategoryListState> get copyWith => _$CategoryListStateCopyWithImpl<CategoryListState>(this as CategoryListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.isActionLoading, isActionLoading) || other.isActionLoading == isActionLoading)&&(identical(other.actionSuccessMessage, actionSuccessMessage) || other.actionSuccessMessage == actionSuccessMessage)&&(identical(other.actionErrorMessage, actionErrorMessage) || other.actionErrorMessage == actionErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(categories),isActionLoading,actionSuccessMessage,actionErrorMessage);

@override
String toString() {
  return 'CategoryListState(isLoading: $isLoading, errorMessage: $errorMessage, categories: $categories, isActionLoading: $isActionLoading, actionSuccessMessage: $actionSuccessMessage, actionErrorMessage: $actionErrorMessage)';
}


}

/// @nodoc
abstract mixin class $CategoryListStateCopyWith<$Res>  {
  factory $CategoryListStateCopyWith(CategoryListState value, $Res Function(CategoryListState) _then) = _$CategoryListStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, List<CategoryResponse> categories, bool isActionLoading, String? actionSuccessMessage, String? actionErrorMessage
});




}
/// @nodoc
class _$CategoryListStateCopyWithImpl<$Res>
    implements $CategoryListStateCopyWith<$Res> {
  _$CategoryListStateCopyWithImpl(this._self, this._then);

  final CategoryListState _self;
  final $Res Function(CategoryListState) _then;

/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? categories = null,Object? isActionLoading = null,Object? actionSuccessMessage = freezed,Object? actionErrorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryResponse>,isActionLoading: null == isActionLoading ? _self.isActionLoading : isActionLoading // ignore: cast_nullable_to_non_nullable
as bool,actionSuccessMessage: freezed == actionSuccessMessage ? _self.actionSuccessMessage : actionSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,actionErrorMessage: freezed == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryListState].
extension CategoryListStatePatterns on CategoryListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryListState value)  $default,){
final _that = this;
switch (_that) {
case _CategoryListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryListState value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  List<CategoryResponse> categories,  bool isActionLoading,  String? actionSuccessMessage,  String? actionErrorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryListState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.categories,_that.isActionLoading,_that.actionSuccessMessage,_that.actionErrorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  List<CategoryResponse> categories,  bool isActionLoading,  String? actionSuccessMessage,  String? actionErrorMessage)  $default,) {final _that = this;
switch (_that) {
case _CategoryListState():
return $default(_that.isLoading,_that.errorMessage,_that.categories,_that.isActionLoading,_that.actionSuccessMessage,_that.actionErrorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? errorMessage,  List<CategoryResponse> categories,  bool isActionLoading,  String? actionSuccessMessage,  String? actionErrorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CategoryListState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.categories,_that.isActionLoading,_that.actionSuccessMessage,_that.actionErrorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryListState implements CategoryListState {
  const _CategoryListState({this.isLoading = false, this.errorMessage, final  List<CategoryResponse> categories = const [], this.isActionLoading = false, this.actionSuccessMessage, this.actionErrorMessage}): _categories = categories;
  

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
 final  List<CategoryResponse> _categories;
@override@JsonKey() List<CategoryResponse> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  bool isActionLoading;
@override final  String? actionSuccessMessage;
@override final  String? actionErrorMessage;

/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryListStateCopyWith<_CategoryListState> get copyWith => __$CategoryListStateCopyWithImpl<_CategoryListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryListState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.isActionLoading, isActionLoading) || other.isActionLoading == isActionLoading)&&(identical(other.actionSuccessMessage, actionSuccessMessage) || other.actionSuccessMessage == actionSuccessMessage)&&(identical(other.actionErrorMessage, actionErrorMessage) || other.actionErrorMessage == actionErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(_categories),isActionLoading,actionSuccessMessage,actionErrorMessage);

@override
String toString() {
  return 'CategoryListState(isLoading: $isLoading, errorMessage: $errorMessage, categories: $categories, isActionLoading: $isActionLoading, actionSuccessMessage: $actionSuccessMessage, actionErrorMessage: $actionErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$CategoryListStateCopyWith<$Res> implements $CategoryListStateCopyWith<$Res> {
  factory _$CategoryListStateCopyWith(_CategoryListState value, $Res Function(_CategoryListState) _then) = __$CategoryListStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, List<CategoryResponse> categories, bool isActionLoading, String? actionSuccessMessage, String? actionErrorMessage
});




}
/// @nodoc
class __$CategoryListStateCopyWithImpl<$Res>
    implements _$CategoryListStateCopyWith<$Res> {
  __$CategoryListStateCopyWithImpl(this._self, this._then);

  final _CategoryListState _self;
  final $Res Function(_CategoryListState) _then;

/// Create a copy of CategoryListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? categories = null,Object? isActionLoading = null,Object? actionSuccessMessage = freezed,Object? actionErrorMessage = freezed,}) {
  return _then(_CategoryListState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryResponse>,isActionLoading: null == isActionLoading ? _self.isActionLoading : isActionLoading // ignore: cast_nullable_to_non_nullable
as bool,actionSuccessMessage: freezed == actionSuccessMessage ? _self.actionSuccessMessage : actionSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,actionErrorMessage: freezed == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
