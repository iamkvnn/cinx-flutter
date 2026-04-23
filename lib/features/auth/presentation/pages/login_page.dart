import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import '../../../../shared/widgets/glass_container.dart';
import '../../../../core/constants/app_sizes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _LoginView();
  }
}

enum _LoginStep { login, forgotEmail, forgotOtp }

class _LoginView extends StatefulWidget {
  const _LoginView();

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _otpController = TextEditingController();
  final _newPasswordController = TextEditingController();

  _LoginStep _step = _LoginStep.login;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _otpController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearBindingGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.p24),
              child: GlassContainer(
                width: 400,
                child: BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.mapOrNull(
                      otpSent: (_) {
                        setState(() {
                          _step = _LoginStep.forgotOtp;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('OTP sent to your email'),
                          ),
                        );
                      },
                      passwordResetSuccess: (_) {
                        setState(() {
                          _step = _LoginStep.login;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Password reset successfully. You can now login.',
                            ),
                          ),
                        );
                      },
                      failure: (f) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(f.message)));
                      },
                    );
                  },
                  builder: (context, state) {
                    final isLoading = state.maybeMap(
                      loading: (_) => true,
                      orElse: () => false,
                    );

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _step == _LoginStep.login
                              ? 'Cinx Admin'
                              : _step == _LoginStep.forgotEmail
                              ? 'Forgot Password'
                              : 'Reset Password',
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: AppSizes.p32),
                        if (_step == _LoginStep.login ||
                            _step == _LoginStep.forgotEmail)
                          TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        if (_step == _LoginStep.login) ...[
                          const SizedBox(height: AppSizes.p16),
                          TextField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock_outline),
                            ),
                            obscureText: true,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  _step = _LoginStep.forgotEmail;
                                });
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          ),
                        ],
                        if (_step == _LoginStep.forgotOtp) ...[
                          const SizedBox(height: AppSizes.p16),
                          TextField(
                            controller: _otpController,
                            decoration: const InputDecoration(
                              labelText: 'OTP',
                              prefixIcon: Icon(Icons.security),
                            ),
                          ),
                          const SizedBox(height: AppSizes.p16),
                          TextField(
                            controller: _newPasswordController,
                            decoration: const InputDecoration(
                              labelText: 'New Password',
                              prefixIcon: Icon(Icons.lock_outline),
                            ),
                            obscureText: true,
                          ),
                        ],
                        const SizedBox(height: AppSizes.p24),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: isLoading
                                ? null
                                : () {
                                    if (_step == _LoginStep.login) {
                                      context.read<AuthBloc>().add(
                                        AuthEvent.loginRequested(
                                          _emailController.text,
                                          _passwordController.text,
                                        ),
                                      );
                                    } else if (_step ==
                                        _LoginStep.forgotEmail) {
                                      context.read<AuthBloc>().add(
                                        AuthEvent.sendForgotPasswordOtp(
                                          _emailController.text,
                                        ),
                                      );
                                    } else if (_step == _LoginStep.forgotOtp) {
                                      context.read<AuthBloc>().add(
                                        AuthEvent.resetPasswordRequested(
                                          _emailController.text,
                                          _otpController.text,
                                          _newPasswordController.text,
                                        ),
                                      );
                                    }
                                  },
                            child: isLoading
                                ? const CircularProgressIndicator()
                                : Text(
                                    _step == _LoginStep.login
                                        ? 'Login'
                                        : _step == _LoginStep.forgotEmail
                                        ? 'Send OTP'
                                        : 'Reset Password',
                                  ),
                          ),
                        ),
                        if (_step != _LoginStep.login)
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _step = _LoginStep.login;
                              });
                            },
                            child: Text(
                              'Back to Login',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LinearBindingGradient extends LinearGradient {
  const LinearBindingGradient({required super.colors, super.begin, super.end});
}
