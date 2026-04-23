import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../data/models/create_category_request.dart';
import '../repositories/category_repository.dart';

@lazySingleton
class CreateCategoryUseCase {
  final CategoryRepository _repository;

  CreateCategoryUseCase(this._repository);

  Future<Either<Failure, void>> call(CreateCategoryRequest request) async {
    return await _repository.createCategory(request);
  }
}
