import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadProfile() = _LoadProfile;
  const factory ProfileEvent.updateProfile({
    required String name,
    required String gender,
    required bool isReceivePushNotification,
    String? avatarFileKey,
  }) = _UpdateProfile;
  const factory ProfileEvent.updateAvatar(List<int> fileBytes, String fileName, String contentType) = _UpdateAvatar;
  const factory ProfileEvent.sendChangePasswordOtp(String email) = _SendChangePasswordOtp;
  const factory ProfileEvent.changePassword(String email, String otp, String oldPassword, String newPassword) = _ChangePassword;
}
