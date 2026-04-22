import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/check_auth_usecase.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';
import '../../domain/usecases/send_change_password_otp_usecase.dart';
import '../../domain/usecases/reset_password_usecase.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _login;
  final LogoutUseCase _logout;
  final CheckAuthUseCase _checkAuth;
  final SendChangePasswordOtpUseCase _sendOtp;
  final ResetPasswordUseCase _resetPassword;

  AuthBloc(this._login, this._logout, this._checkAuth, this._sendOtp, this._resetPassword) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        checkStatus: (_) async {
          emit(const AuthState.loading());
          final result = await _checkAuth();
          result.fold(
            (l) => emit(const AuthState.unauthenticated()),
            (isAuthenticated) {
              if (isAuthenticated) {
                emit(const AuthState.authenticated());
              } else {
                emit(const AuthState.unauthenticated());
              }
            },
          );
        },
        loginRequested: (e) async {
          emit(const AuthState.loading());
          final result = await _login(e.email, e.password);
          result.fold(
            (failure) => emit(AuthState.failure(failure.message)),
            (_) => emit(const AuthState.authenticated()),
          );
        },
        logoutRequested: (_) async {
          emit(const AuthState.loading());
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
      );
    });
  }
}
