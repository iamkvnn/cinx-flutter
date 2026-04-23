import 'package:cinx/features/users/domain/usecases/get_current_user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/check_auth_usecase.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import '../../domain/usecases/send_change_password_otp_usecase.dart';
import '../../domain/usecases/reset_password_usecase.dart';
import '../../../../core/services/notification_service.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _login;
  final LogoutUseCase _logout;
  final CheckAuthUseCase _checkAuth;
  final SendChangePasswordOtpUseCase _sendOtp;
  final ResetPasswordUseCase _resetPassword;
  final GetCurrentUserUseCase _getCurrentUser;
  final NotificationService _notificationService;

  AuthBloc(
    this._login,
    this._logout,
    this._checkAuth,
    this._sendOtp,
    this._resetPassword,
    this._getCurrentUser,
    this._notificationService,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        checkStatus: (_) async {
          emit(const AuthState.loading());
          final result = await _checkAuth();
          await result.fold(
            (l) async => emit(const AuthState.unauthenticated()),
            (isAuthenticated) async {
              if (isAuthenticated) {
                _notificationService.initialize();
                final userResult = await _getCurrentUser();
                userResult.fold(
                  (l) => emit(const AuthState.authenticated()),
                  (user) => emit(AuthState.authenticated(user: user)),
                );
              } else {
                emit(const AuthState.unauthenticated());
              }
            },
          );
        },
        loginRequested: (e) async {
          emit(const AuthState.loading());
          final result = await _login(e.email, e.password);
          await result.fold(
            (failure) async => emit(AuthState.failure(failure.message)),
            (_) async {
              _notificationService.initialize();
              final userResult = await _getCurrentUser();
              userResult.fold(
                (l) => emit(const AuthState.authenticated()),
                (user) => emit(AuthState.authenticated(user: user)),
              );
            },
          );
        },
        logoutRequested: (_) async {
          _notificationService.dispose();
          await _logout();
          emit(const AuthState.unauthenticated());
        },
        sendForgotPasswordOtp: (e) async {
          emit(const AuthState.loading());
          final result = await _sendOtp(e.email);
          result.fold(
            (failure) => emit(AuthState.failure(failure.message)),
            (_) => emit(const AuthState.otpSent()),
          );
        },
        resetPasswordRequested: (e) async {
          emit(const AuthState.loading());
          final result = await _resetPassword(e.email, e.otp, e.newPassword);
          result.fold(
            (failure) => emit(AuthState.failure(failure.message)),
            (_) => emit(const AuthState.passwordResetSuccess()),
          );
        },
        userUpdated: (e) async {
          emit(AuthState.authenticated(user: e.user));
        },
      );
    });
  }
}
