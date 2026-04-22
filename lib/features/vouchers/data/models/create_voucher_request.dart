import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_voucher_request.freezed.dart';
part 'create_voucher_request.g.dart';

@freezed
sealed class CreateVoucherRequest with _$CreateVoucherRequest {
  const factory CreateVoucherRequest({
    required String code,
    required int discountAmount,
    required int minPurchaseAmount,
    String? maxDiscountAmount,
    String? description,
    required int quantity,
    required String validFrom,
    required String validTo,
  }) = _CreateVoucherRequest;

  factory CreateVoucherRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateVoucherRequestFromJson(json);
}
