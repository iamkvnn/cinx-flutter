// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VoucherResponse _$VoucherResponseFromJson(Map<String, dynamic> json) =>
    _VoucherResponse(
      id: json['id'] as String?,
      code: json['code'] as String?,
      discountAmount: (json['discountAmount'] as num?)?.toInt(),
      minPurchaseAmount: (json['minPurchaseAmount'] as num?)?.toInt(),
      maxDiscountAmount: json['maxDiscountAmount'] as String?,
      description: json['description'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      validFrom: json['validFrom'] as String?,
      validTo: json['validTo'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$VoucherResponseToJson(_VoucherResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'discountAmount': instance.discountAmount,
      'minPurchaseAmount': instance.minPurchaseAmount,
      'maxDiscountAmount': instance.maxDiscountAmount,
      'description': instance.description,
      'quantity': instance.quantity,
      'validFrom': instance.validFrom,
      'validTo': instance.validTo,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
