import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class UnbanUserUseCase {
  final UserRepository repository;

  UnbanUserUseCase(this.repository);

  Future<Either<Failure, void>> call({required String id}) {
    return repository.unbanUser(id);
  }
}