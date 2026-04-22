import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class GetPresignedUrlUseCase {
  final UserRepository repository;

  GetPresignedUrlUseCase(this.repository);

  Future<Either<Failure, Map<String, dynamic>>> call(String fileName, String contentType) {
    return repository.getPresignedUrl(fileName, contentType);
  }
}
