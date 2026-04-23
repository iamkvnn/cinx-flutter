import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class VerifyInstructorUseCase {
  final UserRepository repository;

  VerifyInstructorUseCase(this.repository);

  Future<Either<Failure, void>> call({required String id}) {
    return repository.verifyInstructor(id);
  }
}
