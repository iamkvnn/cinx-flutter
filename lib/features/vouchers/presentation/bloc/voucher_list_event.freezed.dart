// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VoucherListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoucherListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VoucherListEvent()';
}


}

/// @nodoc
class $VoucherListEventCopyWith<$Res>  {
$VoucherListEventCopyWith(VoucherListEvent _, $Res Function(VoucherListEvent) __);
}


/// Adds pattern-matching-related methods to [VoucherListEvent].
extension VoucherListEventPatterns on VoucherListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchVouchers value)?  fetch,TResult Function( LoadMoreVouchers value)?  loadMore,TResult Function( CreateVoucher value)?  create,TResult Function( DeleteVoucher value)?  delete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchVouchers() when fetch != null:
return fetch(_that);case LoadMoreVouchers() when loadMore != null:
return loadMore(_that);case CreateVoucher() when create != null:
return create(_that);case DeleteVoucher() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchVouchers value)  fetch,required TResult Function( LoadMoreVouchers value)  loadMore,required TResult Function( CreateVoucher value)  create,required TResult Function( DeleteVoucher value)  delete,}){
final _that = this;
switch (_that) {
case FetchVouchers():
return fetch(_that);case LoadMoreVouchers():
return loadMore(_that);case CreateVoucher():
return create(_that);case DeleteVoucher():
return delete(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchVouchers value)?  fetch,TResult? Function( LoadMoreVouchers value)?  loadMore,TResult? Function( CreateVoucher value)?  create,TResult? Function( DeleteVoucher value)?  delete,}){
final _that = this;
switch (_that) {
case FetchVouchers() when fetch != null:
return fetch(_that);case LoadMoreVouchers() when loadMore != null:
return loadMore(_that);case CreateVoucher() when create != null:
return create(_that);case DeleteVoucher() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? query)?  fetch,TResult Function()?  loadMore,TResult Function( CreateVoucherRequest request)?  create,TResult Function( String id)?  delete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchVouchers() when fetch != null:
return fetch(_that.query);case LoadMoreVouchers() when loadMore != null:
return loadMore();case CreateVoucher() when create != null:
return create(_that.request);case DeleteVoucher() when delete != null:
return delete(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? query)  fetch,required TResult Function()  loadMore,required TResult Function( CreateVoucherRequest request)  create,required TResult Function( String id)  delete,}) {final _that = this;
switch (_that) {
case FetchVouchers():
return fetch(_that.query);case LoadMoreVouchers():
return loadMore();case CreateVoucher():
return create(_that.request);case DeleteVoucher():
return delete(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? query)?  fetch,TResult? Function()?  loadMore,TResult? Function( CreateVoucherRequest request)?  create,TResult? Function( String id)?  delete,}) {final _that = this;
switch (_that) {
case FetchVouchers() when fetch != null:
return fetch(_that.query);case LoadMoreVouchers() when loadMore != null:
return loadMore();case CreateVoucher() when create != null:
return create(_that.request);case DeleteVoucher() when delete != null:
return delete(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class FetchVouchers implements VoucherListEvent {
  const FetchVouchers({this.query});
  

 final  String? query;

/// Create a copy of VoucherListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchVouchersCopyWith<FetchVouchers> get copyWith => _$FetchVouchersCopyWithImpl<FetchVouchers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchVouchers&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'VoucherListEvent.fetch(query: $query)';
}


}

/// @nodoc
abstract mixin class $FetchVouchersCopyWith<$Res> implements $VoucherListEventCopyWith<$Res> {
  factory $FetchVouchersCopyWith(FetchVouchers value, $Res Function(FetchVouchers) _then) = _$FetchVouchersCopyWithImpl;
@useResult
$Res call({
 String? query
});




}
/// @nodoc
class _$FetchVouchersCopyWithImpl<$Res>
    implements $FetchVouchersCopyWith<$Res> {
  _$FetchVouchersCopyWithImpl(this._self, this._then);

  final FetchVouchers _self;
  final $Res Function(FetchVouchers) _then;

/// Create a copy of VoucherListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(FetchVouchers(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class LoadMoreVouchers implements VoucherListEvent {
  const LoadMoreVouchers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreVouchers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VoucherListEvent.loadMore()';
}


}




/// @nodoc


class CreateVoucher implements VoucherListEvent {
  const CreateVoucher(this.request);
  

 final  CreateVoucherRequest request;

/// Create a copy of VoucherListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateVoucherCopyWith<CreateVoucher> get copyWith => _$CreateVoucherCopyWithImpl<CreateVoucher>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateVoucher&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'VoucherListEvent.create(request: $request)';
}


}

/// @nodoc
abstract mixin class $CreateVoucherCopyWith<$Res> implements $VoucherListEventCopyWith<$Res> {
  factory $CreateVoucherCopyWith(CreateVoucher value, $Res Function(CreateVoucher) _then) = _$CreateVoucherCopyWithImpl;
@useResult
$Res call({
 CreateVoucherRequest request
});


$CreateVoucherRequestCopyWith<$Res> get request;

}
/// @nodoc
class _$CreateVoucherCopyWithImpl<$Res>
    implements $CreateVoucherCopyWith<$Res> {
  _$CreateVoucherCopyWithImpl(this._self, this._then);

  final CreateVoucher _self;
  final $Res Function(CreateVoucher) _then;

/// Create a copy of VoucherListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(CreateVoucher(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as CreateVoucherRequest,
  ));
}

/// Create a copy of VoucherListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateVoucherRequestCopyWith<$Res> get request {
  
  return $CreateVoucherRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

/// @nodoc


class DeleteVoucher implements VoucherListEvent {
  const DeleteVoucher(this.id);
  

 final  String id;

/// Create a copy of VoucherListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteVoucherCopyWith<DeleteVoucher> get copyWith => _$DeleteVoucherCopyWithImpl<DeleteVoucher>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteVoucher&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'VoucherListEvent.delete(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteVoucherCopyWith<$Res> implements $VoucherListEventCopyWith<$Res> {
  factory $DeleteVoucherCopyWith(DeleteVoucher value, $Res Function(DeleteVoucher) _then) = _$DeleteVoucherCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteVoucherCopyWithImpl<$Res>
    implements $DeleteVoucherCopyWith<$Res> {
  _$DeleteVoucherCopyWithImpl(this._self, this._then);

  final DeleteVoucher _self;
  final $Res Function(DeleteVoucher) _then;

/// Create a copy of VoucherListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteVoucher(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
