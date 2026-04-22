import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_vouchers_usecase.dart';
import '../../domain/usecases/create_voucher_usecase.dart';
import '../../domain/usecases/delete_voucher_usecase.dart';
import 'voucher_list_event.dart';
import 'voucher_list_state.dart';

@injectable
class VoucherListBloc extends Bloc<VoucherListEvent, VoucherListState> {
  final GetVouchersUseCase _getVouchers;
  final CreateVoucherUseCase _createVoucher;
  final DeleteVoucherUseCase _deleteVoucher;

  VoucherListBloc(
    this._getVouchers,
    this._createVoucher,
    this._deleteVoucher,
  ) : super(const VoucherListState()) {
    on<VoucherListEvent>((event, emit) async {
      await event.map(
        fetch: (e) => _onFetch(e, emit),
        loadMore: (e) => _onLoadMore(e, emit),
        create: (e) => _onCreate(e, emit),
        delete: (e) => _onDelete(e, emit),
      );
    });
  }

  Future<void> _onFetch(
    FetchVouchers event,
    Emitter<VoucherListState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: null,
      vouchers: [],
      currentPage: 1,
      hasReachedMax: false,
      currentQuery: event.query ?? state.currentQuery,
      isActionLoading: false,
      actionSuccessMessage: null,
      actionErrorMessage: null,
    ));

    final result = await _getVouchers(
      page: state.currentPage,
      size: 20,
      query: state.currentQuery,
      sort: '{"createdAt": "DESC"}',
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (paginatedResponse) {
        final newVouchers = paginatedResponse.data ?? [];
        emit(state.copyWith(
          isLoading: false,
          vouchers: newVouchers,
          hasReachedMax: newVouchers.isEmpty ||
              (paginatedResponse.meta != null &&
                  paginatedResponse.meta!.page >=
                      paginatedResponse.meta!.totalPages),
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    LoadMoreVouchers event,
    Emitter<VoucherListState> emit,
  ) async {
    if (state.hasReachedMax || state.isFetchingMore || state.isLoading) return;

    emit(state.copyWith(
      isFetchingMore: true, 
      errorMessage: null,
      actionErrorMessage: null,
      actionSuccessMessage: null,
    ));

    final nextPage = state.currentPage + 1;
    final result = await _getVouchers(
      page: nextPage,
      size: 20,
      query: state.currentQuery,
      sort: '{"createdAt": "DESC"}',
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isFetchingMore: false,
        errorMessage: failure.message,
      )),
      (paginatedResponse) {
        final newVouchers = paginatedResponse.data ?? [];
        emit(state.copyWith(
          isFetchingMore: false,
          currentPage: nextPage,
          vouchers: List.of(state.vouchers)..addAll(newVouchers),
          hasReachedMax: newVouchers.isEmpty ||
              (paginatedResponse.meta != null &&
                  paginatedResponse.meta!.page >=
                      paginatedResponse.meta!.totalPages),
        ));
      },
    );
  }

  Future<void> _onCreate(
    CreateVoucher event,
    Emitter<VoucherListState> emit,
  ) async {
    emit(state.copyWith(
      isActionLoading: true,
      actionErrorMessage: null,
      actionSuccessMessage: null,
    ));
    final result = await _createVoucher(event.request);
    await result.fold(
      (failure) async {
        emit(state.copyWith(
          isActionLoading: false,
          actionErrorMessage: failure.message,
        ));
      },
      (_) async {
        emit(state.copyWith(
          isActionLoading: false,
          actionSuccessMessage: 'Voucher created successfully',
        ));
        add(const VoucherListEvent.fetch()); // Refresh
      },
    );
  }

  Future<void> _onDelete(
    DeleteVoucher event,
    Emitter<VoucherListState> emit,
  ) async {
    emit(state.copyWith(
      isActionLoading: true,
      actionErrorMessage: null,
      actionSuccessMessage: null,
    ));
    final result = await _deleteVoucher(event.id);
    await result.fold(
      (failure) async {
        emit(state.copyWith(
          isActionLoading: false,
          actionErrorMessage: failure.message,
        ));
      },
      (_) async {
        emit(state.copyWith(
          isActionLoading: false,
          actionSuccessMessage: 'Voucher deleted successfully',
        ));
        add(const VoucherListEvent.fetch()); // Refresh
      },
    );
  }
}
