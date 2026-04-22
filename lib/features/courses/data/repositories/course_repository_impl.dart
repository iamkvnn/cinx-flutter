import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../../domain/repositories/course_repository.dart';
import '../datasources/course_remote_data_source.dart';
import '../models/course_response.dart';
import '../models/category_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CourseRepository)
class CourseRepositoryImpl implements CourseRepository {
  final CourseRemoteDataSource remoteDataSource;

  CourseRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, PaginatedApiResponse<List<CourseResponse>>>> getCourses({
    int? page,
    int? size,
    String? query,
    String? sort,
    String? status,
    String? categoryId,
    String? instructorId,
  }) async {
    try {
      final response = await remoteDataSource.getCourses(
        page: page,
        size: size,
        query: query,
        sort: sort, // Assume caller already JSON encoded
        status: status,
        categoryId: categoryId,
        instructorId: instructorId,
      );

      if (response.success) {
        return Right(response);
      }
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CourseResponse>> getCourseDetail(String id) async {
    try {
      final response = await remoteDataSource.getCourseDetail(id);
      if (response.success && response.data != null) {
        return Right(response.data!);
      }
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CourseResponse>> approveCourse(String id) async {
    try {
      final response = await remoteDataSource.approveCourse(id);
      if (response.success && response.data != null) {
        return Right(response.data!);
      }
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, CourseResponse>> rejectCourse(String id, String reason) async {
    try {
      final response = await remoteDataSource.rejectCourse(id, {'reason': reason});
      if (response.success && response.data != null) {
        return Right(response.data!);
      }
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CategoryResponse>>> getCategories() async {
    try {
      final response = await remoteDataSource.getCategories();
      if (response.success && response.data != null) {
        return Right(response.data!);
      }
      return Left(ServerFailure(response.message));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
