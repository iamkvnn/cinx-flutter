import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_category_request.freezed.dart';
part 'create_category_request.g.dart';

@freezed
sealed class CreateCategoryRequest with _$CreateCategoryRequest {
  const factory CreateCategoryRequest({required String name}) =
      _CreateCategoryRequest;

  factory CreateCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryRequestFromJson(json);
}
