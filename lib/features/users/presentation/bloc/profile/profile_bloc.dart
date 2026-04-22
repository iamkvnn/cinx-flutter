import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'profile_event.dart';
import 'profile_state.dart';
import '../../../domain/usecases/get_current_user_usecase.dart';
import '../../../domain/usecases/update_user_usecase.dart';
import '../../../domain/usecases/get_presigned_url_usecase.dart';
import '../../../domain/usecases/upload_file_to_presigned_url_usecase.dart';
import '../../../../auth/domain/usecases/send_change_password_otp_usecase.dart';
import '../../../../auth/domain/usecases/change_password_usecase.dart';
import '../../../data/models/user_dto.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetCurrentUserUseCase _getCurrentUser;
  final UpdateUserUseCase _updateUser;
  final GetPresignedUrlUseCase _getPresignedUrl;
  final UploadFileToPresignedUrlUseCase _uploadFile;
  final SendChangePasswordOtpUseCase _sendOtp;
  final ChangePasswordUseCase _changePassword;

  UserDto? _currentUser;

  ProfileBloc(
    this._getCurrentUser,
    this._updateUser,
    this._getPresignedUrl,
    this._uploadFile,
    this._sendOtp,
    this._changePassword,
  ) : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        loadProfile: (_) async {
          emit(const ProfileState.loading());
          final result = await _getCurrentUser();
          result.fold(
            (l) => emit(ProfileState.failure(l.message)),
            (r) {
              _currentUser = r;
              emit(ProfileState.loaded(r));
            },
          );
        },
        updateProfile: (e) async {
          if (_currentUser == null) return;
          emit(const ProfileState.loading());
          final result = await _updateUser(_currentUser!.userId, {
            'name': e.name,
            'gender': e.gender,
            'isReceivePushNotification': e.isReceivePushNotification,
            if (e.avatarFileKey != null) 'avatarFileKey': e.avatarFileKey,
          });
          result.fold(
            (l) => emit(ProfileState.failure(l.message)),
            (r) {
              _currentUser = r;
              emit(const ProfileState.updateSuccess());
              emit(ProfileState.loaded(r));
            },
          );
        },
        updateAvatar: (e) async {
          emit(const ProfileState.loading());
          final presignedResult = await _getPresignedUrl(e.fileName, e.contentType);
          await presignedResult.fold(
            (l) async => emit(ProfileState.failure(l.message)),
            (presignedData) async {
              final String fileKey = presignedData['fileKey'];
              final String presignedUrl = presignedData['presignedUrl'];
              
              final uploadResult = await _uploadFile(presignedUrl, e.fileBytes, e.contentType);
              uploadResult.fold(
                (l) => emit(ProfileState.failure(l.message)),
                (_) => emit(ProfileState.avatarUploaded(fileKey)),
              );
            },
          );
        },
        sendChangePasswordOtp: (e) async {
          emit(const ProfileState.loading());
          final result = await _sendOtp(e.email);
          result.fold(
            (l) => emit(ProfileState.failure(l.message)),
            (_) {
              emit(const ProfileState.otpSent());
              if (_currentUser != null) {
                emit(ProfileState.loaded(_currentUser!));
              }
            },
          );
        },
        changePassword: (e) async {
          emit(const ProfileState.loading());
          final result = await _changePassword(e.email, e.otp, e.oldPassword, e.newPassword);
          result.fold(
            (l) => emit(ProfileState.failure(l.message)),
            (_) {
              emit(const ProfileState.passwordChangedSuccess());
              if (_currentUser != null) {
                emit(ProfileState.loaded(_currentUser!));
              }
            },
          );
        },
      );
    });
  }
}
