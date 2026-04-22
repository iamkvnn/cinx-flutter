import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../users/data/models/user_dto.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded(UserDto user) = _Loaded;
  const factory ProfileState.updateSuccess() = _UpdateSuccess;
  const factory ProfileState.avatarUploaded(String fileKey) = _AvatarUploaded;
  const factory ProfileState.otpSent() = _OtpSent;
  const factory ProfileState.passwordChangedSuccess() = _PasswordChangedSuccess;
  const factory ProfileState.failure(String message) = _Failure;
}
