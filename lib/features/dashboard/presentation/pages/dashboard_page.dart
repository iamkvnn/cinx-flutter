import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../bloc/dashboard_bloc.dart';
import '../bloc/dashboard_event.dart';
import '../bloc/dashboard_state.dart';
import '../../data/models/dashboard_metrics_response.dart';

/// Dashboard page showing admin statistics overview.
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<DashboardBloc>()..add(const DashboardEvent.fetch()),
      child: const _DashboardView(),
    );
  }
}

class _DashboardView extends StatelessWidget {
  const _DashboardView();

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppTheme.backgroundColor,
              AppTheme.secondaryColor.withValues(alpha: 0.3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const SizedBox.shrink(),
                loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (s) => _DashboardContent(metrics: s.metrics),
                failure: (s) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outline,
                          color: Colors.redAccent, size: 48),
                      const SizedBox(height: AppSizes.p16),
                      Text(s.message,
                          style: Theme.of(context).textTheme.bodyMedium),
                      const SizedBox(height: AppSizes.p16),
                      ElevatedButton.icon(
                        onPressed: () => context
                            .read<DashboardBloc>()
                            .add(const DashboardEvent.fetch()),
                        icon: const Icon(Icons.refresh),
                        label: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  const _DashboardContent({required this.metrics});

  final DashboardMetricsResponse metrics;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSizes.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: AppSizes.p8),
          Text(
            'Welcome back, Admin 👋',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppTheme.secondaryTextColor),
          ),
          const SizedBox(height: AppSizes.p32),
          _StatsGrid(metrics: metrics),
          const SizedBox(height: AppSizes.p32),
          if ((metrics.topEnrolledCourses ?? []).isNotEmpty) ...[
            Text(
              'Top Enrolled Courses',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: AppSizes.p16),
            _TopCoursesCard(courses: metrics.topEnrolledCourses!),
          ],
        ],
      ),
    );
  }
}

class _StatsGrid extends StatelessWidget {
  const _StatsGrid({required this.metrics});
  final DashboardMetricsResponse metrics;

  @override
  Widget build(BuildContext context) {
    final cards = [
      _StatCardData(
        title: 'Total Revenue',
        value: _formatCurrency(metrics.totalRevenue),
        icon: Icons.attach_money_rounded,
        color: const Color(0xFF4CAF50),
      ),
      _StatCardData(
        title: 'Total Users',
        value: '${metrics.totalUsers ?? 0}',
        icon: Icons.people_rounded,
        color: const Color(0xFF2196F3),
      ),
      _StatCardData(
        title: 'New Users (Month)',
        value: '${metrics.newUsersThisMonth ?? 0}',
        icon: Icons.person_add_rounded,
        color: const Color(0xFF9C27B0),
      ),
      _StatCardData(
        title: 'Paid Orders (Month)',
        value: '${metrics.paidOrdersThisMonth ?? 0}',
        icon: Icons.receipt_long_rounded,
        color: const Color(0xFFFF9800),
      ),
    ];

    return LayoutBuilder(builder: (context, constraints) {
      final crossCount = constraints.maxWidth > 600 ? 4 : 2;
      return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossCount,
          crossAxisSpacing: AppSizes.p16,
          mainAxisSpacing: AppSizes.p16,
          childAspectRatio: 1.4,
        ),
        itemCount: cards.length,
        itemBuilder: (_, i) => _StatCard(data: cards[i]),
      );
    });
  }

  String _formatCurrency(int? value) {
    if (value == null) return '0đ';
    final formatted =
        value.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+$)'),
            (m) => '${m[1]},');
    return '$formattedđ';
  }
}

class _StatCardData {
  const _StatCardData({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });
  final String title;
  final String value;
  final IconData icon;
  final Color color;
}

class _StatCard extends StatelessWidget {
  const _StatCard({required this.data});
  final _StatCardData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
        boxShadow: [
          BoxShadow(
            color: data.color.withValues(alpha: 0.15),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(AppSizes.p16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: data.color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
            ),
            child: Icon(data.icon, color: data.color, size: 22),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.value,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: data.color,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                data.title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TopCoursesCard extends StatelessWidget {
  const _TopCoursesCard({required this.courses});
  final List<CourseStats> courses;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: courses.length,
        separatorBuilder: (_, _) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor:
                  AppTheme.primaryColor.withValues(alpha: 0.12),
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                  color: AppTheme.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              course.title ?? 'Unknown',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            trailing: Chip(
              label: Text('${course.enrollmentCount ?? 0} enrolled'),
              backgroundColor:
                  AppTheme.secondaryColor.withValues(alpha: 0.4),
              labelStyle: const TextStyle(fontSize: 12),
            ),
          );
        },
      ),
    );
  }
}
