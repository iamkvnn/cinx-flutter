// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_voucher_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateVoucherRequest _$CreateVoucherRequestFromJson(
  Map<String, dynamic> json,
) => _CreateVoucherRequest(
  code: json['code'] as String,
  discountAmount: (json['discountAmount'] as num).toInt(),
  minPurchaseAmount: (json['minPurchaseAmount'] as num).toInt(),
  maxDiscountAmount: json['maxDiscountAmount'] as String?,
  description: json['description'] as String?,
  quantity: (json['quantity'] as num).toInt(),
  validFrom: json['validFrom'] as String,
  validTo: json['validTo'] as String,
);

Map<String, dynamic> _$CreateVoucherRequestToJson(
  _CreateVoucherRequest instance,
) => <String, dynamic>{
  'code': instance.code,
  'discountAmount': instance.discountAmount,
  'minPurchaseAmount': instance.minPurchaseAmount,
  'maxDiscountAmount': instance.maxDiscountAmount,
  'description': instance.description,
  'quantity': instance.quantity,
  'validFrom': instance.validFrom,
  'validTo': instance.validTo,
};
