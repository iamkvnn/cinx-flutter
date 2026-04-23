import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class BanUserUseCase {
  final UserRepository repository;

  BanUserUseCase(this.repository);

  Future<Either<Failure, void>> call({required String id, required String reason}) {
    return repository.banUser(id, reason);
  }
}