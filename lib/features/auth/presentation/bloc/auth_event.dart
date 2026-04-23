import 'package:cinx/features/users/data/models/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkStatus() = _CheckStatus;
  const factory AuthEvent.loginRequested(String email, String password) = _LoginRequested;
  const factory AuthEvent.logoutRequested() = _LogoutRequested;
  const factory AuthEvent.sendForgotPasswordOtp(String email) = _SendForgotPasswordOtp;
  const factory AuthEvent.resetPasswordRequested(String email, String otp, String newPassword) = _ResetPasswordRequested;
  const factory AuthEvent.userUpdated(UserDto user) = _UserUpdated;
}
