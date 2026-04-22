import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_remote_data_source.dart';
import '../models/dashboard_metrics_response.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource _remoteDataSource;

  const DashboardRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, DashboardMetricsResponse>> getDashboardMetrics({
    int? year,
    int? month,
  }) async {
    try {
      final response = await _remoteDataSource.getDashboardMetrics(
        year: year,
        month: month,
      );
      if (response.success && response.data != null) {
        return Right(response.data!);
      }
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
