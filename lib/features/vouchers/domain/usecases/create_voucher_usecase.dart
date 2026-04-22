import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/voucher_repository.dart';
import '../../data/models/create_voucher_request.dart';

@lazySingleton
class CreateVoucherUseCase {
  final VoucherRepository _repository;

  const CreateVoucherUseCase(this._repository);

  Future<Either<Failure, void>> call(CreateVoucherRequest request) =>
      _repository.createVoucher(request);
}
