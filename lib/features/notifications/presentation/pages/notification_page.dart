import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../data/models/user_notification_response.dart';
import '../bloc/notification_bloc.dart';
import '../bloc/notification_event.dart';
import '../bloc/notification_state.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotificationBloc>()
        ..add(const NotificationEvent.fetch())
        ..add(const NotificationEvent.fetchUnreadCount()),
      child: const _NotificationView(),
    );
  }
}

class _NotificationView extends StatelessWidget {
  const _NotificationView();

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSizes.p24),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Notifications',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                BlocBuilder<NotificationBloc, NotificationState>(
                  builder: (context, state) {
                    if (state.unreadCount > 0) {
                      return Chip(
                        label: Text(
                          '${state.unreadCount} unread',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Colors.redAccent,
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<NotificationBloc, NotificationState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.errorMessage != null && state.notifications.isEmpty) {
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
                              .read<NotificationBloc>()
                              .add(const NotificationEvent.fetch()),
                          icon: const Icon(Icons.refresh),
                          label: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                }

                if (state.notifications.isEmpty) {
                  return const Center(child: Text('No notifications right now.'));
                }

                return ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
                  itemCount: state.notifications.length +
                      (state.hasReachedMax ? 0 : 1),
                  itemBuilder: (context, index) {
                    if (index >= state.notifications.length) {
                      if (!state.isFetchingMore) {
                        context
                            .read<NotificationBloc>()
                            .add(const NotificationEvent.loadMore());
                      }
                      return const Center(
                        child: Padding(
                           padding: EdgeInsets.all(AppSizes.p16),
                           child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return _NotificationCard(
                        notification: state.notifications[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _NotificationCard extends StatelessWidget {
  const _NotificationCard({required this.notification});
  final UserNotificationResponse notification;

  @override
  Widget build(BuildContext context) {
    final isRead = notification.isRead ?? false;

    return GestureDetector(
      onTap: () {
        context
            .read<NotificationBloc>()
            .add(NotificationEvent.toggleRead(notification.id));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: AppSizes.p12),
        decoration: BoxDecoration(
          color: isRead ? Colors.white : AppTheme.primaryColor.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
          border: Border.all(
            color: isRead
                ? Colors.grey.withValues(alpha: 0.2)
                : AppTheme.primaryColor.withValues(alpha: 0.3),
          ),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.all(AppSizes.p16),
          leading: CircleAvatar(
            backgroundColor: isRead
                ? Colors.grey.withValues(alpha: 0.2)
                : AppTheme.primaryColor.withValues(alpha: 0.2),
            child: Icon(
              isRead ? Icons.notifications_none : Icons.notifications_active,
              color: isRead ? Colors.grey : AppTheme.primaryColor,
            ),
          ),
          title: Text(
            notification.title ?? 'No title',
            style: TextStyle(
              fontWeight: isRead ? FontWeight.normal : FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              notification.message ?? '',
              style: TextStyle(
                color: isRead ? Colors.grey[600] : Colors.black87,
              ),
            ),
          ),
          trailing: isRead
              ? const SizedBox.shrink()
              : Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                ),
        ),
      ),
    );
  }
}
