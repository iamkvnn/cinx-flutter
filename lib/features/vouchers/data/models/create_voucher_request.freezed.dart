// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_voucher_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateVoucherRequest {

 String get code; int get discountAmount; int get minPurchaseAmount; String? get maxDiscountAmount; String? get description; int get quantity; String get validFrom; String get validTo;
/// Create a copy of CreateVoucherRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateVoucherRequestCopyWith<CreateVoucherRequest> get copyWith => _$CreateVoucherRequestCopyWithImpl<CreateVoucherRequest>(this as CreateVoucherRequest, _$identity);

  /// Serializes this CreateVoucherRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateVoucherRequest&&(identical(other.code, code) || other.code == code)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.minPurchaseAmount, minPurchaseAmount) || other.minPurchaseAmount == minPurchaseAmount)&&(identical(other.maxDiscountAmount, maxDiscountAmount) || other.maxDiscountAmount == maxDiscountAmount)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,discountAmount,minPurchaseAmount,maxDiscountAmount,description,quantity,validFrom,validTo);

@override
String toString() {
  return 'CreateVoucherRequest(code: $code, discountAmount: $discountAmount, minPurchaseAmount: $minPurchaseAmount, maxDiscountAmount: $maxDiscountAmount, description: $description, quantity: $quantity, validFrom: $validFrom, validTo: $validTo)';
}


}

/// @nodoc
abstract mixin class $CreateVoucherRequestCopyWith<$Res>  {
  factory $CreateVoucherRequestCopyWith(CreateVoucherRequest value, $Res Function(CreateVoucherRequest) _then) = _$CreateVoucherRequestCopyWithImpl;
@useResult
$Res call({
 String code, int discountAmount, int minPurchaseAmount, String? maxDiscountAmount, String? description, int quantity, String validFrom, String validTo
});




}
/// @nodoc
class _$CreateVoucherRequestCopyWithImpl<$Res>
    implements $CreateVoucherRequestCopyWith<$Res> {
  _$CreateVoucherRequestCopyWithImpl(this._self, this._then);

  final CreateVoucherRequest _self;
  final $Res Function(CreateVoucherRequest) _then;

/// Create a copy of CreateVoucherRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? discountAmount = null,Object? minPurchaseAmount = null,Object? maxDiscountAmount = freezed,Object? description = freezed,Object? quantity = null,Object? validFrom = null,Object? validTo = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,minPurchaseAmount: null == minPurchaseAmount ? _self.minPurchaseAmount : minPurchaseAmount // ignore: cast_nullable_to_non_nullable
as int,maxDiscountAmount: freezed == maxDiscountAmount ? _self.maxDiscountAmount : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,validFrom: null == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as String,validTo: null == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateVoucherRequest].
extension CreateVoucherRequestPatterns on CreateVoucherRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateVoucherRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateVoucherRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateVoucherRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateVoucherRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateVoucherRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateVoucherRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  int discountAmount,  int minPurchaseAmount,  String? maxDiscountAmount,  String? description,  int quantity,  String validFrom,  String validTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateVoucherRequest() when $default != null:
return $default(_that.code,_that.discountAmount,_that.minPurchaseAmount,_that.maxDiscountAmount,_that.description,_that.quantity,_that.validFrom,_that.validTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  int discountAmount,  int minPurchaseAmount,  String? maxDiscountAmount,  String? description,  int quantity,  String validFrom,  String validTo)  $default,) {final _that = this;
switch (_that) {
case _CreateVoucherRequest():
return $default(_that.code,_that.discountAmount,_that.minPurchaseAmount,_that.maxDiscountAmount,_that.description,_that.quantity,_that.validFrom,_that.validTo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  int discountAmount,  int minPurchaseAmount,  String? maxDiscountAmount,  String? description,  int quantity,  String validFrom,  String validTo)?  $default,) {final _that = this;
switch (_that) {
case _CreateVoucherRequest() when $default != null:
return $default(_that.code,_that.discountAmount,_that.minPurchaseAmount,_that.maxDiscountAmount,_that.description,_that.quantity,_that.validFrom,_that.validTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateVoucherRequest implements CreateVoucherRequest {
  const _CreateVoucherRequest({required this.code, required this.discountAmount, required this.minPurchaseAmount, this.maxDiscountAmount, this.description, required this.quantity, required this.validFrom, required this.validTo});
  factory _CreateVoucherRequest.fromJson(Map<String, dynamic> json) => _$CreateVoucherRequestFromJson(json);

@override final  String code;
@override final  int discountAmount;
@override final  int minPurchaseAmount;
@override final  String? maxDiscountAmount;
@override final  String? description;
@override final  int quantity;
@override final  String validFrom;
@override final  String validTo;

/// Create a copy of CreateVoucherRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateVoucherRequestCopyWith<_CreateVoucherRequest> get copyWith => __$CreateVoucherRequestCopyWithImpl<_CreateVoucherRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateVoucherRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateVoucherRequest&&(identical(other.code, code) || other.code == code)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.minPurchaseAmount, minPurchaseAmount) || other.minPurchaseAmount == minPurchaseAmount)&&(identical(other.maxDiscountAmount, maxDiscountAmount) || other.maxDiscountAmount == maxDiscountAmount)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,discountAmount,minPurchaseAmount,maxDiscountAmount,description,quantity,validFrom,validTo);

@override
String toString() {
  return 'CreateVoucherRequest(code: $code, discountAmount: $discountAmount, minPurchaseAmount: $minPurchaseAmount, maxDiscountAmount: $maxDiscountAmount, description: $description, quantity: $quantity, validFrom: $validFrom, validTo: $validTo)';
}


}

/// @nodoc
abstract mixin class _$CreateVoucherRequestCopyWith<$Res> implements $CreateVoucherRequestCopyWith<$Res> {
  factory _$CreateVoucherRequestCopyWith(_CreateVoucherRequest value, $Res Function(_CreateVoucherRequest) _then) = __$CreateVoucherRequestCopyWithImpl;
@override @useResult
$Res call({
 String code, int discountAmount, int minPurchaseAmount, String? maxDiscountAmount, String? description, int quantity, String validFrom, String validTo
});




}
/// @nodoc
class __$CreateVoucherRequestCopyWithImpl<$Res>
    implements _$CreateVoucherRequestCopyWith<$Res> {
  __$CreateVoucherRequestCopyWithImpl(this._self, this._then);

  final _CreateVoucherRequest _self;
  final $Res Function(_CreateVoucherRequest) _then;

/// Create a copy of CreateVoucherRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? discountAmount = null,Object? minPurchaseAmount = null,Object? maxDiscountAmount = freezed,Object? description = freezed,Object? quantity = null,Object? validFrom = null,Object? validTo = null,}) {
  return _then(_CreateVoucherRequest(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,minPurchaseAmount: null == minPurchaseAmount ? _self.minPurchaseAmount : minPurchaseAmount // ignore: cast_nullable_to_non_nullable
as int,maxDiscountAmount: freezed == maxDiscountAmount ? _self.maxDiscountAmount : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,validFrom: null == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as String,validTo: null == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
