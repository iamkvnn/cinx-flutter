import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/user_repository.dart';

@lazySingleton
class UploadFileToPresignedUrlUseCase {
  final UserRepository repository;

  UploadFileToPresignedUrlUseCase(this.repository);

  Future<Either<Failure, void>> call(String presignedUrl, List<int> fileBytes, String contentType) {
    return repository.uploadFileToPresignedUrl(presignedUrl, fileBytes, contentType);
  }
}
