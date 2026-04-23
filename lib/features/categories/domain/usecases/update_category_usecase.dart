import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../data/models/create_category_request.dart';
import '../repositories/category_repository.dart';

@lazySingleton
class UpdateCategoryUseCase {
  final CategoryRepository _repository;

  UpdateCategoryUseCase(this._repository);

  Future<Either<Failure, void>> call(String id, CreateCategoryRequest request) async {
    return await _repository.updateCategory(id, request);
  }
}
