import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';

import '../../domain/usecases/get_courses_usecase.dart';
import 'course_list_event.dart';
import 'course_list_state.dart';

@injectable
class CourseListBloc extends Bloc<CourseListEvent, CourseListState> {
  final GetCoursesUseCase _getCourses;

  CourseListBloc(this._getCourses) : super(const CourseListState()) {
    on<CourseListEvent>((event, emit) async {
      await event.map(
        fetchCourses: (e) => _onFetchCourses(e, emit),
        loadMore: (e) => _onLoadMore(e, emit),
      );
    });
  }

  Future<void> _onFetchCourses(
    FetchCourses event,
    Emitter<CourseListState> emit,
  ) async {
    emit(state.copyWith(
      isLoading: true,
      errorMessage: null,
      courses: [],
      currentPage: 1,
      hasReachedMax: false,
      currentQuery: event.query,
      currentStatus: event.status,
      currentCategoryId: event.categoryId,
      currentSort: event.sort,
    ));


    final result = await _getCourses(
      page: state.currentPage,
      size: 20, // Optional: Configurable
      query: state.currentQuery,
      status: state.currentStatus,
      categoryId: state.currentCategoryId,
      sort: state.currentSort != null ? jsonEncode(state.currentSort) : null,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (paginatedResponse) {
        final newCourses = paginatedResponse.data ?? [];
        emit(state.copyWith(
          isLoading: false,
          courses: newCourses,
          hasReachedMax: newCourses.isEmpty || 
              (paginatedResponse.meta != null && paginatedResponse.meta!.page >= paginatedResponse.meta!.totalPages),
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    LoadMore event,
    Emitter<CourseListState> emit,
  ) async {
    if (state.hasReachedMax || state.isFetchingMore || state.isLoading) return;

    emit(state.copyWith(isFetchingMore: true, errorMessage: null));

    final nextPage = state.currentPage + 1;
    // final String? escapedSort = state.currentSort != null 
    //   ? jsonEncode(state.currentSort)
    //   : null;

    final result = await _getCourses(
      page: nextPage,
      size: 20,
      query: state.currentQuery,
      status: state.currentStatus,
      categoryId: state.currentCategoryId,
      sort: state.currentSort != null ? jsonEncode(state.currentSort) : null,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isFetchingMore: false,
        errorMessage: failure.message,
      )),
      (paginatedResponse) {
        final newCourses = paginatedResponse.data ?? [];
        emit(state.copyWith(
          isFetchingMore: false,
          currentPage: nextPage,
          courses: List.of(state.courses)..addAll(newCourses),
          hasReachedMax: newCourses.isEmpty || 
              (paginatedResponse.meta != null && paginatedResponse.meta!.page >= paginatedResponse.meta!.totalPages),
        ));
      },
    );
  }
}
