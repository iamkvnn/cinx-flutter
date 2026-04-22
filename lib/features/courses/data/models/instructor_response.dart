import 'package:freezed_annotation/freezed_annotation.dart';

part 'instructor_response.freezed.dart';
part 'instructor_response.g.dart';

@freezed
sealed class InstructorResponse with _$InstructorResponse {
  const factory InstructorResponse({
    required String id,
    required String name,
    required String email,
    String? gender,
    String? avatarUrl,
    String? bio,
    String? profilePictureUrl,
  }) = _InstructorResponse;

  factory InstructorResponse.fromJson(Map<String, dynamic> json) =>
      _$InstructorResponseFromJson(json);
}