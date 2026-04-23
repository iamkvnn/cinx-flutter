import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../data/models/create_voucher_request.dart';
import '../repositories/voucher_repository.dart';

@lazySingleton
class UpdateVoucherUseCase {
  final VoucherRepository _repository;

  UpdateVoucherUseCase(this._repository);

  Future<Either<Failure, void>> call(String id, CreateVoucherRequest request) async {
    return await _repository.updateVoucher(id, request);
  }
}
