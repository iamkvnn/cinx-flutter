import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/auth_request_dto.dart';
import '../../../../core/services/token_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final TokenStorage tokenStorage;

  AuthRepositoryImpl(this.remoteDataSource, this.tokenStorage);

  @override
  Future<Either<Failure, void>> login(String email, String password) async {
    try {
      final response = await remoteDataSource.login(
        AuthRequestDto(email: email, password: password),
      );

      if (response.success && response.data != null) {
        await tokenStorage.saveTokens(
          accessToken: response.data!.accessToken,
          refreshToken: response.data!.refreshToken,
        );
        return const Right(null);
      }
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await tokenStorage.clearTokens();
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> checkAuthStatus() async {
    try {
      final token = await tokenStorage.getAccessToken();
      return Right(token != null);
    } catch (e) {
      return const Right(false);
    }
  }
}
