import 'package:cinx/core/network/api_response.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/repositories/category_repository.dart';
import '../datasources/category_remote_data_source.dart';
import '../models/category_response.dart';
import '../models/create_category_request.dart';

@LazySingleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource _dataSource;

  CategoryRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, ApiResponse<List<CategoryResponse>>>>
  getCategories() async {
    try {
      final response = await _dataSource.getCategories();
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> createCategory(
    CreateCategoryRequest request,
  ) async {
    try {
      final response = await _dataSource.createCategory(request);
      if (response.success) return const Right(null);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateCategory(
    String id,
    CreateCategoryRequest request,
  ) async {
    try {
      final response = await _dataSource.updateCategory(id, request);
      if (response.success) return const Right(null);
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
