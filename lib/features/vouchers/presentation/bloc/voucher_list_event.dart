import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/create_voucher_request.dart';

part 'voucher_list_event.freezed.dart';

@freezed
class VoucherListEvent with _$VoucherListEvent {
  const factory VoucherListEvent.fetch({String? query}) = FetchVouchers;
  const factory VoucherListEvent.loadMore() = LoadMoreVouchers;
  const factory VoucherListEvent.create(CreateVoucherRequest request) = CreateVoucher;
  const factory VoucherListEvent.update(String id, CreateVoucherRequest request) = UpdateVoucher;
  const factory VoucherListEvent.delete(String id) = DeleteVoucher;
}
