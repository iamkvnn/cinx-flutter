import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../bloc/course_detail_bloc.dart';
import '../bloc/course_detail_event.dart';
import '../bloc/course_detail_state.dart';
import '../../data/models/course_response.dart';
import '../../data/models/section_response.dart';

/// Full-detail page for a single course with approve / reject actions.
class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({super.key, required this.courseId});

  final String courseId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CourseDetailBloc>()
        ..add(CourseDetailEvent.fetch(courseId)),
      child: _CourseDetailView(courseId: courseId),
    );
  }
}

class _CourseDetailView extends StatelessWidget {
  const _CourseDetailView({required this.courseId});

  final String courseId;

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      child: BlocConsumer<CourseDetailBloc, CourseDetailState>(
        listener: (context, state) {
          state.mapOrNull(
            actionSuccess: (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Action completed successfully!'),
                  backgroundColor: Color(0xFF4CAF50),
                ),
              );
            },
            failure: (s) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(s.message),
                  backgroundColor: Colors.redAccent,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox.shrink(),
            loading: (_) =>
                const Center(child: CircularProgressIndicator()),
            loaded: (s) =>
                _CourseDetailContent(course: s.course, isActioning: false),
            actionLoading: (s) =>
                _CourseDetailContent(course: s.course, isActioning: true),
            actionSuccess: (s) =>
                _CourseDetailContent(course: s.course, isActioning: false),
            failure: (s) => Center(
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.p24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline,
                        color: Colors.redAccent, size: 56),
                    const SizedBox(height: AppSizes.p16),
                    Text(s.message,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: AppSizes.p24),
                    ElevatedButton.icon(
                      onPressed: () => context
                          .read<CourseDetailBloc>()
                          .add(CourseDetailEvent.fetch(courseId)),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CourseDetailContent extends StatelessWidget {
  const _CourseDetailContent({
    required this.course,
    required this.isActioning,
  });

  final CourseResponse course;
  final bool isActioning;

  @override
  Widget build(BuildContext context) {
    final imageUrl = course.images?.isNotEmpty == true
        ? course.images!.first.imageUrl
        : null;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSizes.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.of(context).pop(),
              ),
              const SizedBox(width: AppSizes.p8),
              Expanded(
                child: Text(
                  'Course Detail',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.p24),

          // Thumbnail
          if (imageUrl != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
              child: Image.network(
                imageUrl,
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => _NoImagePlaceholder(),
              ),
            )
          else
            _NoImagePlaceholder(),

          const SizedBox(height: AppSizes.p24),

          // Status chip
          _StatusChip(status: course.status),

          const SizedBox(height: AppSizes.p16),

          // Title
          Text(
            course.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),

          if (course.description != null) ...[
            const SizedBox(height: AppSizes.p12),
            Text(
              course.description!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],

          const SizedBox(height: AppSizes.p24),
          const Divider(),
          const SizedBox(height: AppSizes.p16),

          // Meta info grid
          _MetaGrid(course: course),

          const SizedBox(height: AppSizes.p24),
          
          // sections curriculum
          const Divider(),
          const SizedBox(height: AppSizes.p16),
          Text(
            'Curriculum',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: AppSizes.p16),
          _CurriculumList(sections: course.sections),

          const SizedBox(height: AppSizes.p32),

          // Action buttons (only for WAITING_APPROVAL)
          if (course.status == 'WAITING_APPROVAL')
            _ActionButtons(
              courseId: course.id,
              isLoading: isActioning,
            ),
        ],
      ),
    );
  }
}

class _NoImagePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: AppTheme.secondaryColor.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
      ),
      child: const Center(
        child: Icon(Icons.school_rounded,
            size: 64, color: AppTheme.primaryColor),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});
  final String? status;

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (status) {
      case 'PUBLISHED':
        color = const Color(0xFF4CAF50);
        break;
      case 'WAITING_APPROVAL':
        color = const Color(0xFFFF9800);
        break;
      case 'REJECTED':
        color = Colors.redAccent;
        break;
      case 'ARCHIVED':
        color = Colors.grey;
        break;
      default:
        color = AppTheme.primaryColor;
    }

    return Chip(
      label: Text(status ?? 'DRAFT'),
      backgroundColor: color.withValues(alpha: 0.15),
      labelStyle: TextStyle(
          color: color, fontWeight: FontWeight.bold, fontSize: 12),
      side: BorderSide(color: color.withValues(alpha: 0.4)),
    );
  }
}

class _MetaGrid extends StatelessWidget {
  const _MetaGrid({required this.course});
  final CourseResponse course;

  @override
  Widget build(BuildContext context) {
    final items = <_MetaItem>[
      _MetaItem(
          label: 'Instructor',
          value: course.instructor?.name ?? 'N/A'),
      _MetaItem(
          label: 'Category',
          value: course.category?.name ?? 'N/A'),
      _MetaItem(
          label: 'Price',
          value: course.price != null ? '${course.price}đ' : 'Free'),
      _MetaItem(
          label: 'Discount',
          value: course.discountRate != null
              ? '${course.discountRate}%'
              : 'N/A'),
      _MetaItem(
          label: 'Rating',
          value: course.rating?.toStringAsFixed(1) ?? 'N/A'),
      _MetaItem(
          label: 'Enrollments',
          value: '${course.enrollmentCount ?? 0}'),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 72,
        crossAxisSpacing: AppSizes.p12,
        mainAxisSpacing: AppSizes.p12,
      ),
      itemCount: items.length,
      itemBuilder: (_, i) {
        final item = items[i];
        return Container(
          padding: const EdgeInsets.all(AppSizes.p12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 8,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item.label,
                  style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 2),
              Text(item.value,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
            ],
          ),
        );
      },
    );
  }
}

class _MetaItem {
  const _MetaItem({required this.label, required this.value});
  final String label;
  final String value;
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons({required this.courseId, required this.isLoading});
  final String courseId;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: isLoading ? null : () => _showRejectDialog(context),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.redAccent,
              side: const BorderSide(color: Colors.redAccent),
              padding: const EdgeInsets.symmetric(vertical: AppSizes.p16),
            ),
            icon: const Icon(Icons.cancel_outlined),
            label: const Text('Reject'),
          ),
        ),
        const SizedBox(width: AppSizes.p16),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: isLoading
                ? null
                : () => context
                    .read<CourseDetailBloc>()
                    .add(CourseDetailEvent.approve(courseId)),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4CAF50),
              padding: const EdgeInsets.symmetric(vertical: AppSizes.p16),
            ),
            icon: isLoading
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : const Icon(Icons.check_circle_outline_rounded),
            label: const Text('Approve'),
          ),
        ),
      ],
    );
  }

  void _showRejectDialog(BuildContext context) {
    final controller = TextEditingController();

    showDialog<void>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: const Text('Reject Course'),
        content: TextField(
          controller: controller,
          minLines: 3,
          maxLines: 5,
          decoration: const InputDecoration(
            hintText: 'Enter rejection reason...',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final reason = controller.text.trim();
              if (reason.isEmpty) return;
              context.read<CourseDetailBloc>().add(
                    CourseDetailEvent.reject(courseId, reason),
                  );
              Navigator.pop(dialogCtx);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            child: const Text('Confirm Reject'),
          ),
        ],
      ),
    );
  }
}

class _CurriculumList extends StatelessWidget {
  const _CurriculumList({this.sections});

  final List<SectionResponse>? sections;

  @override
  Widget build(BuildContext context) {
    if (sections == null || sections!.isEmpty) {
      return const Text('No curriculum available.', style: TextStyle(color: Colors.grey));
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sections!.length,
      itemBuilder: (context, index) {
        final section = sections![index];
        return Card(
          elevation: 1,
          margin: const EdgeInsets.only(bottom: AppSizes.p12),
          child: ExpansionTile(
            title: Text(
              section.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('${section.lessons.length} lessons'),
            children: section.lessons.map((lesson) {
              return ListTile(
                leading: Icon(
                  lesson.lessonType == 'VIDEO' ? Icons.play_circle_fill : Icons.article,
                  color: AppTheme.primaryColor,
                ),
                title: Text(lesson.title),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(dialogCtx).pop(),
//             child: const Text('Cancel'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               final reason = controller.text.trim();
//               if (reason.isEmpty) return;
//               Navigator.of(dialogCtx).pop();
//               context.read<CourseDetailBloc>().add(
//                     CourseDetailEvent.reject(courseId, reason),
//                   );
//             },
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.redAccent,
//             ),
//             child: const Text('Confirm Reject'),
//           ),
//         ],
//       ),
//     );
//   }
// }
