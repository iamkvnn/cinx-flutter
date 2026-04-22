import 'package:cinx/features/users/data/models/user_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';
import '../../../../injection_container.dart';
import '../bloc/profile/profile_bloc.dart';
import '../bloc/profile/profile_event.dart';
import '../bloc/profile/profile_state.dart';
import '../../../../shared/widgets/glass_container.dart';
import '../../../../shared/widgets/admin_scaffold.dart';
import '../../../../core/constants/app_sizes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>()..add(const ProfileEvent.loadProfile()),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatefulWidget {
  const _ProfileView();

  @override
  State<_ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<_ProfileView> {
  final _nameController = TextEditingController();
  String _gender = 'MALE';
  bool _isReceivePushNotification = true;
  UserDto? _currentUser;
  String? _avatarKey;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _onUserLoaded(UserDto user) {
    if (_currentUser == null) {
      _nameController.text = user.name ?? '';
      _gender = user.gender ?? 'MALE';
    }
    _currentUser = user;
  }

  Future<void> _pickAvatar() async {
    final result = await FilePicker.pickFiles(type: FileType.image, withData: true);
    if (result != null && result.files.single.bytes != null) {
      final file = result.files.single;
      final bytes = file.bytes!.toList();
      context.read<ProfileBloc>().add(ProfileEvent.updateAvatar(bytes, file.name, 'image/jpeg')); // Simplification for content type
    }
  }

  void _showChangePasswordDialog(BuildContext context) {
    if (_currentUser == null || _currentUser!.email == null) return;
    showDialog(
      context: context,
      builder: (_) {
        return BlocProvider.value(
          value: context.read<ProfileBloc>(),
          child: _ChangePasswordDialogBody(email: _currentUser!.email!),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.mapOrNull(
            loaded: (s) => _onUserLoaded(s.user),
            updateSuccess: (_) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Profile updated successfully')));
            },
            avatarUploaded: (s) {
               _avatarKey = s.fileKey;
               context.read<ProfileBloc>().add(ProfileEvent.updateProfile(
                 name: _nameController.text,
                 gender: _gender,
                 isReceivePushNotification: _isReceivePushNotification,
                 avatarFileKey: _avatarKey,
               ));
            },
            failure: (f) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(f.message)));
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeMap(loading: (_) => true, orElse: () => false);

          if (_currentUser == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(AppSizes.p24),
            child: Center(
              child: GlassContainer(
                width: 500,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: _currentUser!.avatarUrl != null ? NetworkImage(_currentUser!.avatarUrl!) : null,
                          child: _currentUser!.avatarUrl == null ? const Icon(Icons.person, size: 50) : null,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Theme.of(context).colorScheme.primary,
                            child: IconButton(
                              icon: const Icon(Icons.camera_alt, size: 18, color: Colors.white),
                              onPressed: isLoading ? null : _pickAvatar,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: AppSizes.p32),
                    TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: 'Name', prefixIcon: Icon(Icons.person_outline)),
                    ),
                    const SizedBox(height: AppSizes.p16),
                    DropdownButtonFormField<String>(
                      initialValue: _gender,
                      decoration: const InputDecoration(labelText: 'Gender', prefixIcon: Icon(Icons.transgender)),
                      items: const [
                        DropdownMenuItem(value: 'MALE', child: Text('Male')),
                        DropdownMenuItem(value: 'FEMALE', child: Text('Female')),
                      ],
                      onChanged: (val) {
                        if (val != null) setState(() => _gender = val);
                      },
                    ),
                    const SizedBox(height: AppSizes.p16),
                    SwitchListTile(
                      title: const Text('Receive Push Notifications'),
                      value: _isReceivePushNotification,
                      onChanged: (val) {
                        setState(() => _isReceivePushNotification = val);
                      },
                    ),
                    const SizedBox(height: AppSizes.p32),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: isLoading ? null : () {
                          context.read<ProfileBloc>().add(ProfileEvent.updateProfile(
                            name: _nameController.text,
                            gender: _gender,
                            isReceivePushNotification: _isReceivePushNotification,
                            avatarFileKey: _avatarKey,
                          ));
                        },
                        child: isLoading ? const CircularProgressIndicator() : const Text('Update Profile'),
                      ),
                    ),
                    const SizedBox(height: AppSizes.p16),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: isLoading ? null : () => _showChangePasswordDialog(context),
                        child: const Text('Change Password'),
                      ),
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

class _ChangePasswordDialogBody extends StatefulWidget {
  final String email;
  const _ChangePasswordDialogBody({required this.email});

  @override
  State<_ChangePasswordDialogBody> createState() => _ChangePasswordDialogBodyState();
}

class _ChangePasswordDialogBodyState extends State<_ChangePasswordDialogBody> {
  bool _otpSent = false;
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _otpController = TextEditingController();

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.mapOrNull(
          otpSent: (_) {
            setState(() => _otpSent = true);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('OTP sent to email')));
          },
          passwordChangedSuccess: (_) {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Password changed successfully')));
          },
          failure: (f) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(f.message)));
          },
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeMap(loading: (_) => true, orElse: () => false);
        return AlertDialog(
          title: const Text('Change Password'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!_otpSent) const Text('An OTP will be sent to your email.'),
              if (_otpSent) ...[
                TextField(controller: _oldPasswordController, decoration: const InputDecoration(labelText: 'Old Password'), obscureText: true),
                TextField(controller: _newPasswordController, decoration: const InputDecoration(labelText: 'New Password'), obscureText: true),
                TextField(controller: _otpController, decoration: const InputDecoration(labelText: 'OTP')),
              ]
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel')),
            ElevatedButton(
              onPressed: isLoading ? null : () {
                if (!_otpSent) {
                  context.read<ProfileBloc>().add(ProfileEvent.sendChangePasswordOtp(widget.email));
                } else {
                  context.read<ProfileBloc>().add(ProfileEvent.changePassword(widget.email, _otpController.text, _oldPasswordController.text, _newPasswordController.text));
                }
              },
              child: isLoading ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)) : Text(_otpSent ? 'Change Password' : 'Send OTP'),
            ),
          ],
        );
      },
    );
  }
}
