import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/voucher_response.dart';

part 'voucher_list_state.freezed.dart';

@freezed
sealed class VoucherListState with _$VoucherListState {
  const factory VoucherListState({
    @Default([]) List<VoucherResponse> vouchers,
    @Default(true) bool isLoading,
    @Default(false) bool isFetchingMore,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
    String? currentQuery,
    String? errorMessage,
    
    // For actions inside list (create/delete)
    @Default(false) bool isActionLoading,
    String? actionSuccessMessage,
    String? actionErrorMessage,
  }) = _VoucherListState;
}
