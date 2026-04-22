import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';

@lazySingleton
class SendChangePasswordOtpUseCase {
  final AuthRepository repository;

  SendChangePasswordOtpUseCase(this.repository);

  Future<Either<Failure, void>> call(String email) {
    return repository.sendChangePasswordOtp(email);
  }
}
