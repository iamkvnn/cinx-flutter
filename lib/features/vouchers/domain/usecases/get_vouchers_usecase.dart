import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../repositories/voucher_repository.dart';
import '../../data/models/voucher_response.dart';

@lazySingleton
class GetVouchersUseCase {
  final VoucherRepository _repository;

  const GetVouchersUseCase(this._repository);

  Future<Either<Failure, PaginatedApiResponse<List<VoucherResponse>>>> call({
    int? page,
    int? size,
    String? query,
    String? sort,
  }) =>
      _repository.getVouchers(
          page: page, size: size, query: query, sort: sort);
}
