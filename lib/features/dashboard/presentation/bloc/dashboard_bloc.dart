import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_dashboard_metrics_usecase.dart';
import 'dashboard_event.dart';
import 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetDashboardMetricsUseCase _getMetrics;

  DashboardBloc(this._getMetrics) : super(const DashboardState.initial()) {
    on<DashboardEvent>((event, emit) async {
      await event.map(
        fetch: (e) async {
          emit(const DashboardState.loading());
          final result = await _getMetrics(year: e.year, month: e.month);
          result.fold(
            (failure) => emit(DashboardState.failure(failure.message)),
            (metrics) => emit(DashboardState.loaded(metrics)),
          );
        },
      );
    });
  }
}
