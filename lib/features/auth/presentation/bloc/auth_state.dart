import 'package:cinx/features/users/data/models/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated({UserDto? user}) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.failure(String message) = _Failure;
  const factory AuthState.otpSent() = _OtpSent;
  const factory AuthState.passwordResetSuccess() = _PasswordResetSuccess;
}
