import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/dashboard_repository.dart';
import '../../data/models/dashboard_metrics_response.dart';

@lazySingleton
class GetDashboardMetricsUseCase {
  final DashboardRepository _repository;

  const GetDashboardMetricsUseCase(this._repository);

  Future<Either<Failure, DashboardMetricsResponse>> call({
    int? year,
    int? month,
  }) =>
      _repository.getDashboardMetrics(year: year, month: month);
}
