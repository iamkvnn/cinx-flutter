import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../injection_container.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../data/models/user_dto.dart';
import '../bloc/user_list_bloc.dart';
import '../bloc/user_list_event.dart';
import '../bloc/user_list_state.dart';

class InstructorListPage extends StatelessWidget {
  const InstructorListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UserListBloc>()..add(const UserListEvent.fetch(role: 'INSTRUCTOR')),
      child: const _InstructorListView(),
    );
  }
}

class _InstructorListView extends StatefulWidget {
  const _InstructorListView();

  @override
  State<_InstructorListView> createState() => _InstructorListViewState();
}

class _InstructorListViewState extends State<_InstructorListView> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  
  bool? _isInstructorVerified;
  String _sortField = 'name';
  String _sortDirection = 'ASC';

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
    context.read<UserListBloc>().add(
          UserListEvent.fetch(
            query: _searchController.text.trim().isEmpty ? null : _searchController.text.trim(),
            role: 'INSTRUCTOR',
            isInstructorVerified: _isInstructorVerified,
            sort: {_sortField: _sortDirection},
          ),
        );
  }

  void _showFilterSortBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppSizes.radiusLarge),
        ),
      ),
      builder: (BuildContext sheetContext) {
        return StatefulBuilder(
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

                  // Verification Filter
                  Text(
                    'Verification Status',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: AppSizes.p8),
                  DropdownButtonFormField<bool?>(
                    initialValue: _isInstructorVerified,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(value: null, child: Text('All')),
                      DropdownMenuItem(value: true, child: Text('Verified')),
                      DropdownMenuItem(value: false, child: Text('Unverified')),
                    ],
                    onChanged: (bool? val) {
                      setSheetState(() {
                        _isInstructorVerified = val;
                      });
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
                        value: 'name',
                        child: Text('Name'),
                      ),
                      DropdownMenuItem(value: 'email', child: Text('Email')),
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
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      child: Column(
        children: [
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
                    'Instructor Management',
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
                    onChanged: _onSearchChanged,
                    decoration: InputDecoration(
                      hintText: 'Search instructors...',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                _onSearchChanged('');
                                setState(() {});
                              },
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppSizes.radiusLarge),
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
                              .add(const UserListEvent.fetch(role: 'INSTRUCTOR')),
                          icon: const Icon(Icons.refresh),
                          label: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                }

                if (state.users.isEmpty) {
                  return const Center(child: Text('No instructors found.'));
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
                    return _InstructorCard(user: state.users[index]);
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

class _InstructorCard extends StatelessWidget {
  const _InstructorCard({required this.user});
  final UserDto user;

  @override
  Widget build(BuildContext context) {
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
          user.name ?? 'Unknown Instructor',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(user.email ?? 'No email'),
            const SizedBox(height: 8),
            Row(
              children: [
                if (user.isInstructorVerified == true)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.green.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
                      border: Border.all(color: Colors.green.withValues(alpha: 0.3)),
                    ),
                    child: const Text(
                      'VERIFIED',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                else
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.orange.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
                      border: Border.all(color: Colors.orange.withValues(alpha: 0.3)),
                    ),
                    child: const Text(
                      'UNVERIFIED',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.visibility, size: 18),
              onPressed: () {
                context.go('/instructors/${user.userId}', extra: user);
              },
            ),
            const SizedBox(width: AppSizes.p4),
            if (user.status == 'BANNED')
              IconButton(
                icon: const Icon(Icons.lock_open, color: Colors.green),
                tooltip: 'Unban Instructor',
                onPressed: () => context.read<UserListBloc>().add(UserListEvent.unbanUser(id: user.userId)),
              )
            else
              IconButton(
                icon: const Icon(Icons.lock_outline, color: Colors.redAccent),
                tooltip: 'Ban Instructor',
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
        title: const Text('Ban Instructor'),
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
