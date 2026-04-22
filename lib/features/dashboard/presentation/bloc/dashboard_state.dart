import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/dashboard_metrics_response.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.loaded(DashboardMetricsResponse metrics) =
      _Loaded;
  const factory DashboardState.failure(String message) = _Failure;
}
