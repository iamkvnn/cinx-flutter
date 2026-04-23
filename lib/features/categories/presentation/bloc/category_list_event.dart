import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/create_category_request.dart';

part 'category_list_event.freezed.dart';

@freezed
class CategoryListEvent with _$CategoryListEvent {
  const factory CategoryListEvent.fetch({String? search}) = FetchCategories;
  const factory CategoryListEvent.create(CreateCategoryRequest request) =
      CreateCategory;
  const factory CategoryListEvent.update(
    String id,
    CreateCategoryRequest request,
  ) = UpdateCategory;
}
