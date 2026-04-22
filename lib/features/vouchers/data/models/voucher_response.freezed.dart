// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VoucherResponse {

 String? get id; String? get code; int? get discountAmount; int? get minPurchaseAmount; String? get maxDiscountAmount; String? get description; int? get quantity; String? get validFrom; String? get validTo; String? get createdAt; String? get updatedAt;
/// Create a copy of VoucherResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoucherResponseCopyWith<VoucherResponse> get copyWith => _$VoucherResponseCopyWithImpl<VoucherResponse>(this as VoucherResponse, _$identity);

  /// Serializes this VoucherResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoucherResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.minPurchaseAmount, minPurchaseAmount) || other.minPurchaseAmount == minPurchaseAmount)&&(identical(other.maxDiscountAmount, maxDiscountAmount) || other.maxDiscountAmount == maxDiscountAmount)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,discountAmount,minPurchaseAmount,maxDiscountAmount,description,quantity,validFrom,validTo,createdAt,updatedAt);

@override
String toString() {
  return 'VoucherResponse(id: $id, code: $code, discountAmount: $discountAmount, minPurchaseAmount: $minPurchaseAmount, maxDiscountAmount: $maxDiscountAmount, description: $description, quantity: $quantity, validFrom: $validFrom, validTo: $validTo, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $VoucherResponseCopyWith<$Res>  {
  factory $VoucherResponseCopyWith(VoucherResponse value, $Res Function(VoucherResponse) _then) = _$VoucherResponseCopyWithImpl;
@useResult
$Res call({
 String? id, String? code, int? discountAmount, int? minPurchaseAmount, String? maxDiscountAmount, String? description, int? quantity, String? validFrom, String? validTo, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$VoucherResponseCopyWithImpl<$Res>
    implements $VoucherResponseCopyWith<$Res> {
  _$VoucherResponseCopyWithImpl(this._self, this._then);

  final VoucherResponse _self;
  final $Res Function(VoucherResponse) _then;

/// Create a copy of VoucherResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? code = freezed,Object? discountAmount = freezed,Object? minPurchaseAmount = freezed,Object? maxDiscountAmount = freezed,Object? description = freezed,Object? quantity = freezed,Object? validFrom = freezed,Object? validTo = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,minPurchaseAmount: freezed == minPurchaseAmount ? _self.minPurchaseAmount : minPurchaseAmount // ignore: cast_nullable_to_non_nullable
as int?,maxDiscountAmount: freezed == maxDiscountAmount ? _self.maxDiscountAmount : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as String?,validTo: freezed == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VoucherResponse].
extension VoucherResponsePatterns on VoucherResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VoucherResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VoucherResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VoucherResponse value)  $default,){
final _that = this;
switch (_that) {
case _VoucherResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VoucherResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VoucherResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? code,  int? discountAmount,  int? minPurchaseAmount,  String? maxDiscountAmount,  String? description,  int? quantity,  String? validFrom,  String? validTo,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VoucherResponse() when $default != null:
return $default(_that.id,_that.code,_that.discountAmount,_that.minPurchaseAmount,_that.maxDiscountAmount,_that.description,_that.quantity,_that.validFrom,_that.validTo,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? code,  int? discountAmount,  int? minPurchaseAmount,  String? maxDiscountAmount,  String? description,  int? quantity,  String? validFrom,  String? validTo,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _VoucherResponse():
return $default(_that.id,_that.code,_that.discountAmount,_that.minPurchaseAmount,_that.maxDiscountAmount,_that.description,_that.quantity,_that.validFrom,_that.validTo,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? code,  int? discountAmount,  int? minPurchaseAmount,  String? maxDiscountAmount,  String? description,  int? quantity,  String? validFrom,  String? validTo,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _VoucherResponse() when $default != null:
return $default(_that.id,_that.code,_that.discountAmount,_that.minPurchaseAmount,_that.maxDiscountAmount,_that.description,_that.quantity,_that.validFrom,_that.validTo,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VoucherResponse implements VoucherResponse {
  const _VoucherResponse({this.id, this.code, this.discountAmount, this.minPurchaseAmount, this.maxDiscountAmount, this.description, this.quantity, this.validFrom, this.validTo, this.createdAt, this.updatedAt});
  factory _VoucherResponse.fromJson(Map<String, dynamic> json) => _$VoucherResponseFromJson(json);

@override final  String? id;
@override final  String? code;
@override final  int? discountAmount;
@override final  int? minPurchaseAmount;
@override final  String? maxDiscountAmount;
@override final  String? description;
@override final  int? quantity;
@override final  String? validFrom;
@override final  String? validTo;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of VoucherResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoucherResponseCopyWith<_VoucherResponse> get copyWith => __$VoucherResponseCopyWithImpl<_VoucherResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VoucherResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoucherResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.minPurchaseAmount, minPurchaseAmount) || other.minPurchaseAmount == minPurchaseAmount)&&(identical(other.maxDiscountAmount, maxDiscountAmount) || other.maxDiscountAmount == maxDiscountAmount)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.validFrom, validFrom) || other.validFrom == validFrom)&&(identical(other.validTo, validTo) || other.validTo == validTo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,discountAmount,minPurchaseAmount,maxDiscountAmount,description,quantity,validFrom,validTo,createdAt,updatedAt);

@override
String toString() {
  return 'VoucherResponse(id: $id, code: $code, discountAmount: $discountAmount, minPurchaseAmount: $minPurchaseAmount, maxDiscountAmount: $maxDiscountAmount, description: $description, quantity: $quantity, validFrom: $validFrom, validTo: $validTo, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$VoucherResponseCopyWith<$Res> implements $VoucherResponseCopyWith<$Res> {
  factory _$VoucherResponseCopyWith(_VoucherResponse value, $Res Function(_VoucherResponse) _then) = __$VoucherResponseCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? code, int? discountAmount, int? minPurchaseAmount, String? maxDiscountAmount, String? description, int? quantity, String? validFrom, String? validTo, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$VoucherResponseCopyWithImpl<$Res>
    implements _$VoucherResponseCopyWith<$Res> {
  __$VoucherResponseCopyWithImpl(this._self, this._then);

  final _VoucherResponse _self;
  final $Res Function(_VoucherResponse) _then;

/// Create a copy of VoucherResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? code = freezed,Object? discountAmount = freezed,Object? minPurchaseAmount = freezed,Object? maxDiscountAmount = freezed,Object? description = freezed,Object? quantity = freezed,Object? validFrom = freezed,Object? validTo = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_VoucherResponse(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,discountAmount: freezed == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int?,minPurchaseAmount: freezed == minPurchaseAmount ? _self.minPurchaseAmount : minPurchaseAmount // ignore: cast_nullable_to_non_nullable
as int?,maxDiscountAmount: freezed == maxDiscountAmount ? _self.maxDiscountAmount : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,validFrom: freezed == validFrom ? _self.validFrom : validFrom // ignore: cast_nullable_to_non_nullable
as String?,validTo: freezed == validTo ? _self.validTo : validTo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
