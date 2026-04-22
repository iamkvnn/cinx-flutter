import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_remote_data_source.dart';
import '../models/user_dto.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _dataSource;
  final Dio _dio;

  const UserRepositoryImpl(this._dataSource, @Named('unauthenticatedDio') this._dio);

  @override
  Future<Either<Failure, PaginatedApiResponse<List<UserDto>>>> getUsers({
    int? page,
    int? size,
    String? query,
    String? sort,
  }) async {
    try {
      final response = await _dataSource.getAllUsers(
          page: page, size: size, query: query, sort: sort);
      if (response.success) return Right(response);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserDto>> getCurrentUser() async {
    try {
      final response = await _dataSource.getCurrentUser();
      if (response.success && response.data != null) return Right(response.data!);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserDto>> updateUser(String id, Map<String, dynamic> data) async {
    try {
      final response = await _dataSource.updateUser(id, data);
      if (response.success && response.data != null) return Right(response.data!);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> getPresignedUrl(String fileName, String contentType) async {
    try {
      final response = await _dataSource.getPresignedUrl(fileName, contentType);
      if (response.success && response.data != null) return Right(response.data!);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> uploadFileToPresignedUrl(String presignedUrl, List<int> fileBytes, String contentType) async {
    try {
      final response = await _dio.put(
        presignedUrl,
        data: fileBytes,
        options: Options(
          headers: {
            'Content-Type': contentType,
          },
        ),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return const Right(null);
      }
      return Left(ServerFailure('Failed to upload file'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
