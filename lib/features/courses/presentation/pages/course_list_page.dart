import 'package:flutter/material.dart';
import 'dart:async';
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
import '../../../categories/presentation/bloc/category_list_bloc.dart';
import '../../../categories/presentation/bloc/category_list_event.dart';
import '../../../categories/presentation/bloc/category_list_state.dart';

/// Admin course list page with filters and infinite scroll.
class CourseListPage extends StatelessWidget {
  const CourseListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CourseListBloc>()
            ..add(const CourseListEvent.fetchCourses(sort: {'createdAt': 'DESC'})),
        ),
        BlocProvider(
          create: (context) => getIt<CategoryListBloc>()
            ..add(const CategoryListEvent.fetch()),
        ),
      ],
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
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;

  String? _selectedStatus;
  String? _selectedCategoryId;
  String _sortField = 'createdAt';
  String _sortDirection = 'DESC';

  static const _statusOptions = [
    null,
    'DRAFT',
    'WAITING_APPROVAL',
    'PUBLISHED',
    'REJECTED',
    'ARCHIVED',
  ];

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      _applyFilterAndSort();
    });
  }

  void _applyFilterAndSort() {
    context.read<CourseListBloc>().add(
      CourseListEvent.fetchCourses(
        query: _searchController.text.trim().isEmpty
            ? null
            : _searchController.text.trim(),
        status: _selectedStatus,
        categoryId: _selectedCategoryId,
        sort: {_sortField: _sortDirection},
      ),
    );
  }

  void _showFilterSortBottomSheet() {
    final categoryBloc = context.read<CategoryListBloc>();
    
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppSizes.radiusLarge),
        ),
      ),
      builder: (BuildContext sheetContext) {
        return BlocProvider.value(
          value: categoryBloc,
          child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setSheetState) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(sheetContext).viewInsets.bottom,
                  left: AppSizes.p24,
                  right: AppSizes.p24,
                  top: AppSizes.p24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Filter & Sort',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => Navigator.pop(sheetContext),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSizes.p16),

                    // Status Filter
                    Text(
                      'Status',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: AppSizes.p8),
                    Wrap(
                      spacing: AppSizes.p8,
                      runSpacing: AppSizes.p8,
                      children: _statusOptions.map((status) {
                        final isSelected = _selectedStatus == status;
                        return FilterChip(
                          label: Text(status ?? 'All'),
                          selected: isSelected,
                          onSelected: (bool selected) {
                            setSheetState(() {
                              _selectedStatus = selected ? status : null;
                            });
                          },
                          selectedColor: AppTheme.primaryColor.withValues(
                            alpha: 0.2,
                          ),
                          checkmarkColor: AppTheme.primaryColor,
                        );
                      }).toList(),
                    ),

                    const SizedBox(height: AppSizes.p24),

                    // Category Filter
                    Text(
                      'Category',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: AppSizes.p8),
                    BlocBuilder<CategoryListBloc, CategoryListState>(
                      builder: (context, categoryState) {
                        if (categoryState.isLoading && categoryState.categories.isEmpty) {
                          return const Center(child: CircularProgressIndicator());
                        }
                        
                        final categories = categoryState.categories;
                        return DropdownButtonFormField<String?>(
                          initialValue: _selectedCategoryId,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'All Categories',
                          ),
                          items: [
                            const DropdownMenuItem<String?>(
                              value: null,
                              child: Text('All'),
                            ),
                            ...categories.map((category) {
                              return DropdownMenuItem<String?>(
                                value: category.id,
                                child: Text(category.name ?? 'Unknown'),
                              );
                            }),
                          ],
                          onChanged: (String? newValue) {
                            setSheetState(() {
                              _selectedCategoryId = newValue;
                            });
                          },
                        );
                      },
                    ),

                    const SizedBox(height: AppSizes.p24),

                    // Sort Field
                    Text(
                      'Sort By',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: AppSizes.p8),
                    DropdownButtonFormField<String>(
                      initialValue: _sortField,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'createdAt',
                          child: Text('Created Date'),
                        ),
                        DropdownMenuItem(value: 'title', child: Text('Title')),
                        DropdownMenuItem(value: 'status', child: Text('Status')),
                      ],
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setSheetState(() {
                            _sortField = newValue;
                          });
                        }
                      },
                    ),

                    const SizedBox(height: AppSizes.p16),

                    // Sort Direction
                    Text(
                      'Direction',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: AppSizes.p8),
                    SegmentedButton<String>(
                      segments: const [
                        ButtonSegment<String>(
                          value: 'ASC',
                          label: Text('Ascending'),
                        ),
                        ButtonSegment<String>(
                          value: 'DESC',
                          label: Text('Descending'),
                        ),
                      ],
                      selected: {_sortDirection},
                      onSelectionChanged: (Set<String> newSelection) {
                        setSheetState(() {
                          _sortDirection = newSelection.first;
                        });
                      },
                    ),

                    const SizedBox(height: AppSizes.p32),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(sheetContext);
                          _applyFilterAndSort();
                        },
                        child: const Text('Apply'),
                      ),
                    ),
                    const SizedBox(height: AppSizes.p24),
                  ],
                ),
              );
            },
          ),
        );
      },
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
              AppSizes.p24,
              AppSizes.p24,
              AppSizes.p24,
              AppSizes.p12,
            ),
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
          // Search & Filter header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onChanged: _onSearchChanged,
                    decoration: InputDecoration(
                      hintText: 'Search courses...',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                _onSearchChanged('');
                                setState(() {}); // To hide clear button
                              },
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          AppSizes.radiusLarge,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppSizes.p12),
                Container(
                  decoration: BoxDecoration(
                    color: AppTheme.primaryColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.filter_list,
                      color: AppTheme.primaryColor,
                    ),
                    onPressed: _showFilterSortBottomSheet,
                    tooltip: 'Filter and Sort',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSizes.p16),
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
                        const Icon(
                          Icons.error_outline,
                          size: 48,
                          color: Colors.redAccent,
                        ),
                        const SizedBox(height: AppSizes.p16),
                        Text(state.errorMessage!),
                        const SizedBox(height: AppSizes.p16),
                        ElevatedButton.icon(
                          onPressed: () => context.read<CourseListBloc>().add(
                            const CourseListEvent.fetchCourses(
                              sort: {'createdAt': 'DESC'},
                            ),
                          ),
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
                  onLoadMore: () => context.read<CourseListBloc>().add(
                    const CourseListEvent.loadMore(),
                  ),
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
          horizontal: AppSizes.p16,
          vertical: AppSizes.p8,
        ),
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
                      errorBuilder: (_, _, _) => _ThumbnailPlaceholder(),
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
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
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
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: statusColor.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(AppSizes.p32),
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
                          course.price != null ? '${course.price}đ' : 'Free',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
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
      child: const Icon(
        Icons.school_rounded,
        size: 40,
        color: AppTheme.primaryColor,
      ),
    );
  }
}
