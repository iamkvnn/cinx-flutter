import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class RejectInstructorUseCase {
  final UserRepository repository;

  RejectInstructorUseCase(this.repository);

  Future<Either<Failure, void>> call({required String id, required String reason}) {
    return repository.rejectInstructor(id, reason);
  }
}
