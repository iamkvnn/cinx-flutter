import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../injection_container.dart';
import '../../../../shared/widgets/infinite_scroll_list.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../data/models/course_response.dart';
import '../bloc/course_list_bloc.dart';
import '../bloc/course_list_event.dart';
import '../bloc/course_list_state.dart';

/// Admin course list page with filters and infinite scroll.
class CourseListPage extends StatelessWidget {
  const CourseListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CourseListBloc>()
        ..add(const CourseListEvent.fetchCourses(
            sort: {'createdAt': 'DESC'})),
      child: const _CourseListView(),
    );
  }
}

class _CourseListView extends StatefulWidget {
  const _CourseListView();

  @override
  State<_CourseListView> createState() => _CourseListViewState();
}

class _CourseListViewState extends State<_CourseListView> {
  String? _selectedStatus;

  static const _statusOptions = [
    null,
    'DRAFT',
    'WAITING_APPROVAL',
    'PUBLISHED',
    'REJECTED',
    'ARCHIVED',
  ];

  void _applyFilter(String? status) {
    setState(() => _selectedStatus = status);
    context.read<CourseListBloc>().add(
          CourseListEvent.fetchCourses(
            status: status,
            sort: const {'createdAt': 'DESC'},
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      child: Column(
        children: [
          // Page header
          Container(
            padding: const EdgeInsets.fromLTRB(
                AppSizes.p24, AppSizes.p24, AppSizes.p24, AppSizes.p12),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Course Management',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
          ),
          // Status filter chips
          SizedBox(
            height: 48,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.p24),
              itemCount: _statusOptions.length,
              separatorBuilder: (_, _) =>
                  const SizedBox(width: AppSizes.p8),
              itemBuilder: (_, i) {
                final status = _statusOptions[i];
                final label = status ?? 'All';
                final isSelected = _selectedStatus == status;
                return FilterChip(
                  label: Text(label),
                  selected: isSelected,
                  onSelected: (_) => _applyFilter(status),
                  selectedColor:
                      AppTheme.primaryColor.withValues(alpha: 0.2),
                  checkmarkColor: AppTheme.primaryColor,
                );
              },
            ),
          ),
          const SizedBox(height: AppSizes.p8),
          // Course list
          Expanded(
            child: BlocBuilder<CourseListBloc, CourseListState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.errorMessage != null && state.courses.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.error_outline,
                            size: 48, color: Colors.redAccent),
                        const SizedBox(height: AppSizes.p16),
                        Text(state.errorMessage!),
                        const SizedBox(height: AppSizes.p16),
                        ElevatedButton.icon(
                          onPressed: () => context
                              .read<CourseListBloc>()
                              .add(const CourseListEvent.fetchCourses(
                                  sort: {'createdAt': 'DESC'})),
                          icon: const Icon(Icons.refresh),
                          label: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                }

                if (state.courses.isEmpty) {
                  return const Center(child: Text('No courses found.'));
                }

                return InfiniteScrollList(
                  items: state.courses,
                  isLoading: state.isFetchingMore,
                  hasReachedMax: state.hasReachedMax,
                  onLoadMore: () => context
                      .read<CourseListBloc>()
                      .add(const CourseListEvent.loadMore()),
                  itemBuilder: (context, course, index) =>
                      _CourseCard(course: course),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CourseCard extends StatelessWidget {
  const _CourseCard({required this.course});
  final CourseResponse course;

  Color _statusColor(String? status) {
    switch (status) {
      case 'PUBLISHED':
        return const Color(0xFF4CAF50);
      case 'WAITING_APPROVAL':
        return const Color(0xFFFF9800);
      case 'REJECTED':
        return Colors.redAccent;
      case 'ARCHIVED':
        return Colors.grey;
      default:
        return AppTheme.primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _statusColor(course.status);
    final imageUrl = course.images?.isNotEmpty == true
        ? course.images!.first.imageUrl
        : null;

    return GestureDetector(
      onTap: () => context.go('/courses/${course.id}'),
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: AppSizes.p16, vertical: AppSizes.p8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            // Thumbnail
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(AppSizes.radiusLarge),
                bottomLeft: Radius.circular(AppSizes.radiusLarge),
              ),
              child: imageUrl != null
                  ? Image.network(
                      imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) =>
                          _ThumbnailPlaceholder(),
                    )
                  : _ThumbnailPlaceholder(),
            ),
            // Info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.p12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: AppSizes.p4),
                    Text(
                      course.instructor?.name ?? '',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: AppSizes.p8),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 3),
                          decoration: BoxDecoration(
                            color: statusColor.withValues(alpha: 0.12),
                            borderRadius:
                                BorderRadius.circular(AppSizes.p32),
                          ),
                          child: Text(
                            course.status ?? 'DRAFT',
                            style: TextStyle(
                              fontSize: 11,
                              color: statusColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          course.price != null
                              ? '${course.price}đ'
                              : 'Free',
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: AppSizes.p12),
              child: Icon(Icons.chevron_right, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class _ThumbnailPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: AppTheme.secondaryColor.withValues(alpha: 0.3),
      child: const Icon(Icons.school_rounded,
          size: 40, color: AppTheme.primaryColor),
    );
  }
}
