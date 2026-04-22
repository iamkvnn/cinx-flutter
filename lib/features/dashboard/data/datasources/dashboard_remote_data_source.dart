import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../models/dashboard_metrics_response.dart';

part 'dashboard_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class DashboardRemoteDataSource {
  @factoryMethod
  factory DashboardRemoteDataSource(
          @Named('authenticatedDio') Dio dio) =
      _DashboardRemoteDataSource;

  @GET('/api/v1/statistics/dashboard')
  Future<ApiResponse<DashboardMetricsResponse>> getDashboardMetrics({
    @Query('year') int? year,
    @Query('month') int? month,
  });
}
