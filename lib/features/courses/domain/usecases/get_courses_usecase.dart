import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../repositories/course_repository.dart';
import '../../data/models/course_response.dart';

@lazySingleton
class GetCoursesUseCase {
  final CourseRepository repository;

  GetCoursesUseCase(this.repository);

  Future<Either<Failure, PaginatedApiResponse<List<CourseResponse>>>> call({
    int? page,
    int? size,
    String? query,
    String? sort,
    String? status,
    String? categoryId,
    String? instructorId,
  }) {
    return repository.getCourses(
      page: page,
      size: size,
      query: query,
      sort: sort,
      status: status,
      categoryId: categoryId,
      instructorId: instructorId,
    );
  }
}
