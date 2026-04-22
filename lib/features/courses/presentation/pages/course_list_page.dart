import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../injection_container.dart';
import '../../../../shared/widgets/infinite_scroll_list.dart';
import '../bloc/course_list_bloc.dart';
import '../bloc/course_list_event.dart';
import '../bloc/course_list_state.dart';

class CourseListPage extends StatelessWidget {
  const CourseListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CourseListBloc>()
        ..add(const CourseListEvent.fetchCourses(sort: {'createdAt': 'DESC'})),
      child: const _CourseListView(),
    );
  }
}

class _CourseListView extends StatelessWidget {
  const _CourseListView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // TODO: Navigate to create course page
            },
          ),
        ],
      ),
      body: BlocBuilder<CourseListBloc, CourseListState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.errorMessage != null && state.courses.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.errorMessage!),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CourseListBloc>().add(
                        const CourseListEvent.fetchCourses(sort: {'createdAt': 'DESC'}),
                      );
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          if (state.courses.isEmpty) {
            return const Center(child: Text('No courses found.'));
          }

          return Column(
            children: [
              // Optionally add a search bar or filters here
              Expanded(
                child: InfiniteScrollList(
                  items: state.courses,
                  isLoading: state.isFetchingMore,
                  hasReachedMax: state.hasReachedMax,
                  onLoadMore: () {
                    context.read<CourseListBloc>().add(const CourseListEvent.loadMore());
                  },
                  itemBuilder: (context, course, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: ListTile(
                        title: Text(course.title),
                        subtitle: Text('Status: ${course.status}'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          context.go('/courses/${course.id}');
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
