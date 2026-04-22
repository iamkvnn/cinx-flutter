import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../repositories/user_repository.dart';
import '../../data/models/user_dto.dart';

@lazySingleton
class GetUsersUseCase {
  final UserRepository _repository;

  const GetUsersUseCase(this._repository);

  Future<Either<Failure, PaginatedApiResponse<List<UserDto>>>> call({
    int? page,
    int? size,
    String? query,
    String? sort,
  }) =>
      _repository.getUsers(
          page: page, size: size, query: query, sort: sort);
}
