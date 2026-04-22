import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../data/models/user_dto.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class UpdateUserUseCase {
  final UserRepository repository;

  UpdateUserUseCase(this.repository);

  Future<Either<Failure, UserDto>> call(String id, Map<String, dynamic> data) {
    return repository.updateUser(id, data);
  }
}
