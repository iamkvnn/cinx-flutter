import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/category_response.dart';

part 'category_list_state.freezed.dart';

@freezed
sealed class CategoryListState with _$CategoryListState {
  const factory CategoryListState({
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default([]) List<CategoryResponse> categories,
    @Default(false) bool isActionLoading,
    String? actionSuccessMessage,
    String? actionErrorMessage,
  }) = _CategoryListState;
}
