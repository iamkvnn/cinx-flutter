import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../../data/models/dashboard_metrics_response.dart';

abstract class DashboardRepository {
  Future<Either<Failure, DashboardMetricsResponse>> getDashboardMetrics({
    int? year,
    int? month,
  });
}
