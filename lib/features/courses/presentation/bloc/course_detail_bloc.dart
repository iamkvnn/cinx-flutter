import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/approve_course_usecase.dart';
import '../../domain/usecases/reject_course_usecase.dart';
import '../../domain/repositories/course_repository.dart';
import 'course_detail_event.dart';
import 'course_detail_state.dart';

@injectable
class CourseDetailBloc extends Bloc<CourseDetailEvent, CourseDetailState> {
  final CourseRepository _courseRepository;
  final ApproveCourseUseCase _approve;
  final RejectCourseUseCase _reject;

  CourseDetailBloc(
    this._courseRepository,
    this._approve,
    this._reject,
  ) : super(const CourseDetailState.initial()) {
    on<CourseDetailEvent>((event, emit) async {
      await event.map(
        fetch: (e) => _onFetch(e, emit),
        approve: (e) => _onApprove(e, emit),
        reject: (e) => _onReject(e, emit),
      );
    });
  }

  Future<void> _onFetch(
    FetchCourseDetail event,
    Emitter<CourseDetailState> emit,
  ) async {
    emit(const CourseDetailState.loading());
    final result = await _courseRepository.getCourseDetail(event.courseId);
    result.fold(
      (failure) => emit(CourseDetailState.failure(failure.message)),
      (course) => emit(CourseDetailState.loaded(course)),
    );
  }

  Future<void> _onApprove(
    ApproveCourse event,
    Emitter<CourseDetailState> emit,
  ) async {
    final currentCourse = state.mapOrNull(
      loaded: (s) => s.course,
      actionSuccess: (s) => s.course,
    );
    if (currentCourse == null) return;

    emit(CourseDetailState.actionLoading(currentCourse));
    final result = await _approve(event.courseId);
    result.fold(
      (failure) => emit(CourseDetailState.failure(failure.message)),
      (course) => emit(CourseDetailState.actionSuccess(course)),
    );
  }

  Future<void> _onReject(
    RejectCourse event,
    Emitter<CourseDetailState> emit,
  ) async {
    final currentCourse = state.mapOrNull(
      loaded: (s) => s.course,
      actionSuccess: (s) => s.course,
    );
    if (currentCourse == null) return;

    emit(CourseDetailState.actionLoading(currentCourse));
    final result = await _reject(event.courseId, event.reason);
    result.fold(
      (failure) => emit(CourseDetailState.failure(failure.message)),
      (course) => emit(CourseDetailState.actionSuccess(course)),
    );
  }
}
