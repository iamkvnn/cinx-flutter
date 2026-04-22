import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response_dto.freezed.dart';
part 'token_response_dto.g.dart';

@freezed
sealed class TokenResponseDto with _$TokenResponseDto {
  const factory TokenResponseDto({
    required String accessToken,
    required String refreshToken,
  }) = _TokenResponseDto;

  factory TokenResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseDtoFromJson(json);
}
