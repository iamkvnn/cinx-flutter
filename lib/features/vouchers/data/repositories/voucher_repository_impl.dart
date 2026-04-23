import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../../domain/repositories/voucher_repository.dart';
import '../datasources/voucher_remote_data_source.dart';
import '../models/voucher_response.dart';
import '../models/create_voucher_request.dart';

@LazySingleton(as: VoucherRepository)
class VoucherRepositoryImpl implements VoucherRepository {
  final VoucherRemoteDataSource _dataSource;

  const VoucherRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, PaginatedApiResponse<List<VoucherResponse>>>> getVouchers({
    int? page,
    int? size,
    String? query,
    String? sort,
  }) async {
    try {
      final response = await _dataSource.getVouchers(
          page: page, size: size, query: query, sort: sort);
      if (response.success) return Right(response);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> createVoucher(CreateVoucherRequest request) async {
    try {
      final response = await _dataSource.createVoucher(request);
      if (response.success) return const Right(null);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteVoucher(String id) async {
    try {
      final response = await _dataSource.deleteVoucher(id);
      if (response.success) return const Right(null);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateVoucher(String id, CreateVoucherRequest request) async {
    try {
      final response = await _dataSource.updateVoucher(id, request);
      if (response.success) return const Right(null);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
