import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../../domain/repositories/notification_repository.dart';
import '../datasources/notification_remote_data_source.dart';
import '../models/user_notification_response.dart';

@LazySingleton(as: NotificationRepository)
class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource _dataSource;

  const NotificationRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, PaginatedApiResponse<List<UserNotificationResponse>>>> getNotifications({
    int? page,
    int? size,
  }) async {
    try {
      final response = await _dataSource.getNotifications(page: page, size: size);
      if (response.success) return Right(response);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> getUnreadCount() async {
    try {
      final response = await _dataSource.getUnreadCount();
      if (response.success && response.data != null) return Right(response.data!);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> toggleRead(String id) async {
    try {
      final response = await _dataSource.toggleRead(id);
      if (response.success) return const Right(null);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
