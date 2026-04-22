// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VoucherListState {

 List<VoucherResponse> get vouchers; bool get isLoading; bool get isFetchingMore; bool get hasReachedMax; int get currentPage; String? get currentQuery; String? get errorMessage;// For actions inside list (create/delete)
 bool get isActionLoading; String? get actionSuccessMessage; String? get actionErrorMessage;
/// Create a copy of VoucherListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoucherListStateCopyWith<VoucherListState> get copyWith => _$VoucherListStateCopyWithImpl<VoucherListState>(this as VoucherListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoucherListState&&const DeepCollectionEquality().equals(other.vouchers, vouchers)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.currentQuery, currentQuery) || other.currentQuery == currentQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isActionLoading, isActionLoading) || other.isActionLoading == isActionLoading)&&(identical(other.actionSuccessMessage, actionSuccessMessage) || other.actionSuccessMessage == actionSuccessMessage)&&(identical(other.actionErrorMessage, actionErrorMessage) || other.actionErrorMessage == actionErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(vouchers),isLoading,isFetchingMore,hasReachedMax,currentPage,currentQuery,errorMessage,isActionLoading,actionSuccessMessage,actionErrorMessage);

@override
String toString() {
  return 'VoucherListState(vouchers: $vouchers, isLoading: $isLoading, isFetchingMore: $isFetchingMore, hasReachedMax: $hasReachedMax, currentPage: $currentPage, currentQuery: $currentQuery, errorMessage: $errorMessage, isActionLoading: $isActionLoading, actionSuccessMessage: $actionSuccessMessage, actionErrorMessage: $actionErrorMessage)';
}


}

/// @nodoc
abstract mixin class $VoucherListStateCopyWith<$Res>  {
  factory $VoucherListStateCopyWith(VoucherListState value, $Res Function(VoucherListState) _then) = _$VoucherListStateCopyWithImpl;
@useResult
$Res call({
 List<VoucherResponse> vouchers, bool isLoading, bool isFetchingMore, bool hasReachedMax, int currentPage, String? currentQuery, String? errorMessage, bool isActionLoading, String? actionSuccessMessage, String? actionErrorMessage
});




}
/// @nodoc
class _$VoucherListStateCopyWithImpl<$Res>
    implements $VoucherListStateCopyWith<$Res> {
  _$VoucherListStateCopyWithImpl(this._self, this._then);

  final VoucherListState _self;
  final $Res Function(VoucherListState) _then;

/// Create a copy of VoucherListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? vouchers = null,Object? isLoading = null,Object? isFetchingMore = null,Object? hasReachedMax = null,Object? currentPage = null,Object? currentQuery = freezed,Object? errorMessage = freezed,Object? isActionLoading = null,Object? actionSuccessMessage = freezed,Object? actionErrorMessage = freezed,}) {
  return _then(_self.copyWith(
vouchers: null == vouchers ? _self.vouchers : vouchers // ignore: cast_nullable_to_non_nullable
as List<VoucherResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,currentQuery: freezed == currentQuery ? _self.currentQuery : currentQuery // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isActionLoading: null == isActionLoading ? _self.isActionLoading : isActionLoading // ignore: cast_nullable_to_non_nullable
as bool,actionSuccessMessage: freezed == actionSuccessMessage ? _self.actionSuccessMessage : actionSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,actionErrorMessage: freezed == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VoucherListState].
extension VoucherListStatePatterns on VoucherListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VoucherListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VoucherListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VoucherListState value)  $default,){
final _that = this;
switch (_that) {
case _VoucherListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VoucherListState value)?  $default,){
final _that = this;
switch (_that) {
case _VoucherListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<VoucherResponse> vouchers,  bool isLoading,  bool isFetchingMore,  bool hasReachedMax,  int currentPage,  String? currentQuery,  String? errorMessage,  bool isActionLoading,  String? actionSuccessMessage,  String? actionErrorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VoucherListState() when $default != null:
return $default(_that.vouchers,_that.isLoading,_that.isFetchingMore,_that.hasReachedMax,_that.currentPage,_that.currentQuery,_that.errorMessage,_that.isActionLoading,_that.actionSuccessMessage,_that.actionErrorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<VoucherResponse> vouchers,  bool isLoading,  bool isFetchingMore,  bool hasReachedMax,  int currentPage,  String? currentQuery,  String? errorMessage,  bool isActionLoading,  String? actionSuccessMessage,  String? actionErrorMessage)  $default,) {final _that = this;
switch (_that) {
case _VoucherListState():
return $default(_that.vouchers,_that.isLoading,_that.isFetchingMore,_that.hasReachedMax,_that.currentPage,_that.currentQuery,_that.errorMessage,_that.isActionLoading,_that.actionSuccessMessage,_that.actionErrorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<VoucherResponse> vouchers,  bool isLoading,  bool isFetchingMore,  bool hasReachedMax,  int currentPage,  String? currentQuery,  String? errorMessage,  bool isActionLoading,  String? actionSuccessMessage,  String? actionErrorMessage)?  $default,) {final _that = this;
switch (_that) {
case _VoucherListState() when $default != null:
return $default(_that.vouchers,_that.isLoading,_that.isFetchingMore,_that.hasReachedMax,_that.currentPage,_that.currentQuery,_that.errorMessage,_that.isActionLoading,_that.actionSuccessMessage,_that.actionErrorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _VoucherListState implements VoucherListState {
  const _VoucherListState({final  List<VoucherResponse> vouchers = const [], this.isLoading = true, this.isFetchingMore = false, this.hasReachedMax = false, this.currentPage = 1, this.currentQuery, this.errorMessage, this.isActionLoading = false, this.actionSuccessMessage, this.actionErrorMessage}): _vouchers = vouchers;
  

 final  List<VoucherResponse> _vouchers;
@override@JsonKey() List<VoucherResponse> get vouchers {
  if (_vouchers is EqualUnmodifiableListView) return _vouchers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vouchers);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isFetchingMore;
@override@JsonKey() final  bool hasReachedMax;
@override@JsonKey() final  int currentPage;
@override final  String? currentQuery;
@override final  String? errorMessage;
// For actions inside list (create/delete)
@override@JsonKey() final  bool isActionLoading;
@override final  String? actionSuccessMessage;
@override final  String? actionErrorMessage;

/// Create a copy of VoucherListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoucherListStateCopyWith<_VoucherListState> get copyWith => __$VoucherListStateCopyWithImpl<_VoucherListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoucherListState&&const DeepCollectionEquality().equals(other._vouchers, _vouchers)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.currentQuery, currentQuery) || other.currentQuery == currentQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isActionLoading, isActionLoading) || other.isActionLoading == isActionLoading)&&(identical(other.actionSuccessMessage, actionSuccessMessage) || other.actionSuccessMessage == actionSuccessMessage)&&(identical(other.actionErrorMessage, actionErrorMessage) || other.actionErrorMessage == actionErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_vouchers),isLoading,isFetchingMore,hasReachedMax,currentPage,currentQuery,errorMessage,isActionLoading,actionSuccessMessage,actionErrorMessage);

@override
String toString() {
  return 'VoucherListState(vouchers: $vouchers, isLoading: $isLoading, isFetchingMore: $isFetchingMore, hasReachedMax: $hasReachedMax, currentPage: $currentPage, currentQuery: $currentQuery, errorMessage: $errorMessage, isActionLoading: $isActionLoading, actionSuccessMessage: $actionSuccessMessage, actionErrorMessage: $actionErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$VoucherListStateCopyWith<$Res> implements $VoucherListStateCopyWith<$Res> {
  factory _$VoucherListStateCopyWith(_VoucherListState value, $Res Function(_VoucherListState) _then) = __$VoucherListStateCopyWithImpl;
@override @useResult
$Res call({
 List<VoucherResponse> vouchers, bool isLoading, bool isFetchingMore, bool hasReachedMax, int currentPage, String? currentQuery, String? errorMessage, bool isActionLoading, String? actionSuccessMessage, String? actionErrorMessage
});




}
/// @nodoc
class __$VoucherListStateCopyWithImpl<$Res>
    implements _$VoucherListStateCopyWith<$Res> {
  __$VoucherListStateCopyWithImpl(this._self, this._then);

  final _VoucherListState _self;
  final $Res Function(_VoucherListState) _then;

/// Create a copy of VoucherListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? vouchers = null,Object? isLoading = null,Object? isFetchingMore = null,Object? hasReachedMax = null,Object? currentPage = null,Object? currentQuery = freezed,Object? errorMessage = freezed,Object? isActionLoading = null,Object? actionSuccessMessage = freezed,Object? actionErrorMessage = freezed,}) {
  return _then(_VoucherListState(
vouchers: null == vouchers ? _self._vouchers : vouchers // ignore: cast_nullable_to_non_nullable
as List<VoucherResponse>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,currentQuery: freezed == currentQuery ? _self.currentQuery : currentQuery // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,isActionLoading: null == isActionLoading ? _self.isActionLoading : isActionLoading // ignore: cast_nullable_to_non_nullable
as bool,actionSuccessMessage: freezed == actionSuccessMessage ? _self.actionSuccessMessage : actionSuccessMessage // ignore: cast_nullable_to_non_nullable
as String?,actionErrorMessage: freezed == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
