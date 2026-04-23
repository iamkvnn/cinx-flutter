import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class UploadFileToPresignedUrlUseCase {
  final UserRepository repository;

  UploadFileToPresignedUrlUseCase(this.repository);

  Future<Either<Failure, void>> call(String presignedUrl, String filePath, String contentType) {
    return repository.uploadFileToPresignedUrl(presignedUrl, filePath, contentType);
  }
}
