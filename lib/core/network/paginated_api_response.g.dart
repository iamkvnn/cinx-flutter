// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedMetadata _$PaginatedMetadataFromJson(Map<String, dynamic> json) =>
    _PaginatedMetadata(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      totalElements: (json['totalElements'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$PaginatedMetadataToJson(_PaginatedMetadata instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
    };

_PaginatedApiResponse<T> _$PaginatedApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _PaginatedApiResponse<T>(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
  meta: json['meta'] == null
      ? null
      : PaginatedMetadata.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaginatedApiResponseToJson<T>(
  _PaginatedApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
  'meta': instance.meta,
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
