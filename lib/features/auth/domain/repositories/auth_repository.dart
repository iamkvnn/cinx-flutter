import 'package:cinx/core/errors/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> login(String email, String password);
  Future<Either<Failure, void>> logout();
  Future<Either<Failure, bool>> checkAuthStatus();
  Future<Either<Failure, void>> sendChangePasswordOtp(String email);
  Future<Either<Failure, void>> resetPassword(String email, String otp, String newPassword);
  Future<Either<Failure, void>> changePassword(String email, String otp, String oldPassword, String newPassword);
}
