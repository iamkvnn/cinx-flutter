import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../data/models/user_dto.dart';
import '../bloc/user_list_bloc.dart';
import '../bloc/user_list_event.dart';
import '../bloc/user_list_state.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UserListBloc>()..add(const UserListEvent.fetch(role: 'USER')),
      child: const _UserListView(),
    );
  }
}

class _UserListView extends StatefulWidget {
  const _UserListView();

  @override
  State<_UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<_UserListView> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearch() {
    context.read<UserListBloc>().add(
          UserListEvent.fetch(query: _searchController.text.trim()),
        );
  }

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
                    'User Management',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.p24),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search users...',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          _onSearch();
                        },
                      ),
                    ),
                    onSubmitted: (_) => _onSearch(),
                  ),
                ),
                const SizedBox(width: AppSizes.p16),
                ElevatedButton(
                  onPressed: _onSearch,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.p24, vertical: AppSizes.p16),
                  ),
                  child: const Text('Search'),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSizes.p16),
          Expanded(
            child: BlocConsumer<UserListBloc, UserListState>(
              listener: (context, state) {
                if (state.actionSuccessMessage != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.actionSuccessMessage!),
                      backgroundColor: Colors.green,
                    ),
                  );
                } else if (state.actionErrorMessage != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.actionErrorMessage!),
                      backgroundColor: Colors.redAccent,
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.errorMessage != null && state.users.isEmpty) {
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
                              .read<UserListBloc>()
                              .add(const UserListEvent.fetch()),
                          icon: const Icon(Icons.refresh),
                          label: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                }

                if (state.users.isEmpty) {
                  return const Center(child: Text('No users found.'));
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(AppSizes.p16),
                  itemCount: state.users.length + (state.hasReachedMax ? 0 : 1),
                  itemBuilder: (context, index) {
                    if (index >= state.users.length) {
                      if (!state.isFetchingMore) {
                        context
                            .read<UserListBloc>()
                            .add(const UserListEvent.loadMore());
                      }
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(AppSizes.p16),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return _UserCard(user: state.users[index]);
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

class _UserCard extends StatelessWidget {
  const _UserCard({required this.user});
  final UserDto user;

  Color _roleColor(String? role) {
    switch (role) {
      case 'ADMIN':
        return Colors.redAccent;
      case 'INSTRUCTOR':
        return const Color(0xFF4CAF50);
      default:
        return AppTheme.primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    final roleColor = _roleColor(user.role);
    
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppSizes.p8, vertical: AppSizes.p8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(AppSizes.p12),
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: user.avatarUrl != null
              ? NetworkImage(user.avatarUrl!)
              : null,
          backgroundColor: AppTheme.secondaryColor.withValues(alpha: 0.5),
          child: user.avatarUrl == null
              ? const Icon(Icons.person, color: AppTheme.primaryColor)
              : null,
        ),
        title: Text(
          user.name ?? 'Unknown User',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(user.email ?? 'No email'),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: roleColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
                border: Border.all(color: roleColor.withValues(alpha: 0.3)),
              ),
              child: Text(
                user.role ?? 'USER',
                style: TextStyle(
                  color: roleColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'XP: ${user.xp ?? 0}',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppTheme.primaryColor,
              ),
            ),
            const SizedBox(width: AppSizes.p16),
            if (user.status == 'BANNED')
              IconButton(
                icon: const Icon(Icons.lock_open, color: Colors.green),
                tooltip: 'Unban User',
                onPressed: () => context.read<UserListBloc>().add(UserListEvent.unbanUser(id: user.userId)),
              )
            else
              IconButton(
                icon: const Icon(Icons.lock_outline, color: Colors.redAccent),
                tooltip: 'Ban User',
                onPressed: () {
                  _showBanDialog(context, user);
                },
              ),
          ],
        ),
      ),
    );
  }

  void _showBanDialog(BuildContext context, UserDto targetUser) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: const Text('Ban User'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Enter reason for ban...',
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            onPressed: () {
              final reason = controller.text.trim();
              if (reason.isEmpty) return;
              context.read<UserListBloc>().add(
                    UserListEvent.banUser(id: targetUser.userId, reason: reason),
                  );
              Navigator.pop(dialogCtx);
            },
            child: const Text('Ban'),
          ),
        ],
      ),
    );
  }
}
