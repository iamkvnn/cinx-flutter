import 'package:cinx/core/network/api_response.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../data/models/category_response.dart';
import '../repositories/category_repository.dart';

@lazySingleton
class GetCategoriesUseCase {
  final CategoryRepository _repository;

  GetCategoriesUseCase(this._repository);

  Future<Either<Failure, ApiResponse<List<CategoryResponse>>>> call() async {
    return await _repository.getCategories();
  }
}
