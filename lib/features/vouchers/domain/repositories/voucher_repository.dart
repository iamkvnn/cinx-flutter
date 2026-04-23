import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../../data/models/voucher_response.dart';
import '../../data/models/create_voucher_request.dart';

abstract class VoucherRepository {
  Future<Either<Failure, PaginatedApiResponse<List<VoucherResponse>>>> getVouchers({
    int? page,
    int? size,
    String? query,
    String? sort,
  });

  Future<Either<Failure, void>> createVoucher(CreateVoucherRequest request);

  Future<Either<Failure, void>> updateVoucher(String id, CreateVoucherRequest request);

  Future<Either<Failure, void>> deleteVoucher(String id);
}
