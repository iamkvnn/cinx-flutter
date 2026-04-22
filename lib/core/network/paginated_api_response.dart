import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_api_response.freezed.dart';
part 'paginated_api_response.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class PaginatedMetadata with _$PaginatedMetadata {
  const factory PaginatedMetadata({
    required int page,
    required int limit,
    required int totalElements,
    required int totalPages,
  }) = _PaginatedMetadata;

  factory PaginatedMetadata.fromJson(Map<String, dynamic> json) =>
      _$PaginatedMetadataFromJson(json);
}

@Freezed(genericArgumentFactories: true)
sealed class PaginatedApiResponse<T> with _$PaginatedApiResponse<T> {
  const factory PaginatedApiResponse({
    required bool success,
    required String message,
    T? data,
    PaginatedMetadata? meta,
  }) = _PaginatedApiResponse<T>;

  factory PaginatedApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginatedApiResponseFromJson(json, fromJsonT);
}
