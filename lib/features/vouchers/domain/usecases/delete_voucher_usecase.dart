import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/voucher_repository.dart';

@lazySingleton
class DeleteVoucherUseCase {
  final VoucherRepository _repository;

  const DeleteVoucherUseCase(this._repository);

  Future<Either<Failure, void>> call(String id) =>
      _repository.deleteVoucher(id);
}
