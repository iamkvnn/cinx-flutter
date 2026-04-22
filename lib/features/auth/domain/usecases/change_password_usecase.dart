import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';

@lazySingleton
class ChangePasswordUseCase {
  final AuthRepository repository;

  ChangePasswordUseCase(this.repository);

  Future<Either<Failure, void>> call(String email, String otp, String oldPassword, String newPassword) {
    return repository.changePassword(email, otp, oldPassword, newPassword);
  }
}
