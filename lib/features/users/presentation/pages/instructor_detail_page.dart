import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../injection_container.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../../../shared/widgets/glass_container.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_theme.dart';
import '../../data/models/user_dto.dart';
import '../bloc/user_list_bloc.dart';
import '../bloc/user_list_event.dart';
import '../bloc/user_list_state.dart';

class InstructorDetailPage extends StatelessWidget {
  final UserDto user;

  const InstructorDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UserListBloc>(),
      child: _InstructorDetailView(user: user),
    );
  }
}

class _InstructorDetailView extends StatelessWidget {
  final UserDto user;

  const _InstructorDetailView({required this.user});

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      child: BlocListener<UserListBloc, UserListState>(
        listener: (context, state) {
          if (state.actionSuccessMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.actionSuccessMessage!),
                backgroundColor: Colors.green,
              ),
            );
            context.go('/instructors');
          } else if (state.actionErrorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.actionErrorMessage!),
                backgroundColor: Colors.redAccent,
              ),
            );
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => context.go('/instructors'),
                  ),
                  const SizedBox(width: AppSizes.p16),
                  Text(
                    'Instructor Details',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.p24),
              GlassContainer(
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.p24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: user.avatarUrl != null
                                ? NetworkImage(user.avatarUrl!)
                                : null,
                            backgroundColor: AppTheme.secondaryColor.withValues(alpha: 0.5),
                            child: user.avatarUrl == null
                                ? const Icon(Icons.person, size: 40, color: AppTheme.primaryColor)
                                : null,
                          ),
                          const SizedBox(width: AppSizes.p24),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user.name ?? 'Unknown',
                                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: AppSizes.p8),
                                Text(user.email ?? 'No email'),
                                const SizedBox(height: AppSizes.p8),
                                Row(
                                  children: [
                                    if (user.isInstructorVerified == true)
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: Colors.green.withValues(alpha: 0.1),
                                          borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
                                          border: Border.all(color: Colors.green.withValues(alpha: 0.3)),
                                        ),
                                        child: const Text('VERIFIED', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                                      )
                                    else
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: Colors.orange.withValues(alpha: 0.1),
                                          borderRadius: BorderRadius.circular(AppSizes.radiusMedium),
                                          border: Border.all(color: Colors.orange.withValues(alpha: 0.3)),
                                        ),
                                        child: const Text('UNVERIFIED', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSizes.p32),
                      const Divider(),
                      const SizedBox(height: AppSizes.p16),
                      Text('CV / Resume', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: AppSizes.p8),
                      if (user.cvUrl != null && user.cvUrl!.isNotEmpty)
                        ListTile(
                          leading: const Icon(Icons.picture_as_pdf, color: Colors.redAccent, size: 40),
                          title: const Text('Instructor CV Document'),
                          subtitle: const Text('Click to view PDF'),
                          trailing: ElevatedButton.icon(
                            icon: const Icon(Icons.open_in_new, size: 16),
                            label: const Text('View CV'),
                            onPressed: () => _launchUrl(user.cvUrl!),
                          ),
                          contentPadding: EdgeInsets.zero,
                        )
                      else
                        const Text('No CV provided.', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
                      
                      const SizedBox(height: AppSizes.p32),
                      if (user.isInstructorVerified != true) ...[
                        const Divider(),
                        const SizedBox(height: AppSizes.p16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OutlinedButton.icon(
                              icon: const Icon(Icons.close),
                              label: const Text('Reject'),
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.redAccent,
                                side: const BorderSide(color: Colors.redAccent),
                              ),
                              onPressed: () => _showRejectDialog(context, user),
                            ),
                            const SizedBox(width: AppSizes.p16),
                            ElevatedButton.icon(
                              icon: const Icon(Icons.check),
                              label: const Text('Approve'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                context.read<UserListBloc>().add(
                                      UserListEvent.verifyInstructor(id: user.userId),
                                    );
                              },
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showRejectDialog(BuildContext context, UserDto targetUser) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: const Text('Reject Instructor'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Enter reason for rejection...',
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
                    UserListEvent.rejectInstructor(id: targetUser.userId, reason: reason),
                  );
              Navigator.pop(dialogCtx);
            },
            child: const Text('Reject'),
          ),
        ],
      ),
    );
  }
}
