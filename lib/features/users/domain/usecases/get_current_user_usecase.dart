import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../data/models/user_dto.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class GetCurrentUserUseCase {
  final UserRepository repository;

  GetCurrentUserUseCase(this.repository);

  Future<Either<Failure, UserDto>> call() {
    return repository.getCurrentUser();
  }
}
