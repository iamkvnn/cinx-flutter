import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_response.freezed.dart';
part 'voucher_response.g.dart';

@freezed
sealed class VoucherResponse with _$VoucherResponse {
  const factory VoucherResponse({
    String? id,
    String? code,
    int? discountAmount,
    int? minPurchaseAmount,
    String? maxDiscountAmount,
    String? description,
    int? quantity,
    String? validFrom,
    String? validTo,
    String? createdAt,
    String? updatedAt,
  }) = _VoucherResponse;

  factory VoucherResponse.fromJson(Map<String, dynamic> json) =>
      _$VoucherResponseFromJson(json);
}
