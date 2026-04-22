import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
sealed class UserDto with _$UserDto {
  const factory UserDto({
    required String userId,
    String? name,
    String? email,
    String? role, // USER, INSTRUCTOR, ADMIN
    String? gender, // MALE, FEMALE
    String? avatarUrl,
    int? xp,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
