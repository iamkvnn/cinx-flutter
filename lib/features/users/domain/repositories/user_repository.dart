import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../../data/models/user_dto.dart';

abstract class UserRepository {
  Future<Either<Failure, PaginatedApiResponse<List<UserDto>>>> getUsers({
    int? page,
    int? size,
    String? query,
    String? sort,
  });

  Future<Either<Failure, UserDto>> getCurrentUser();
  Future<Either<Failure, UserDto>> updateUser(String id, Map<String, dynamic> data);
  Future<Either<Failure, Map<String, dynamic>>> getPresignedUrl(String fileName, String contentType);
  Future<Either<Failure, void>> uploadFileToPresignedUrl(String presignedUrl, List<int> fileBytes, String contentType);
}
