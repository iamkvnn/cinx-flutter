import 'package:cinx/core/network/api_response.dart';
import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../../data/models/category_response.dart';
import '../../data/models/create_category_request.dart';

abstract class CategoryRepository {
  Future<Either<Failure, ApiResponse<List<CategoryResponse>>>> getCategories();

  Future<Either<Failure, void>> createCategory(CreateCategoryRequest request);
  Future<Either<Failure, void>> updateCategory(
    String id,
    CreateCategoryRequest request,
  );
}
