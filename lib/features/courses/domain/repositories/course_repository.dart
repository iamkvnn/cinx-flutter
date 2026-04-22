import 'package:cinx/core/errors/failures.dart';
import 'package:cinx/core/network/paginated_api_response.dart';
import 'package:cinx/features/courses/data/models/category_response.dart';
import 'package:cinx/features/courses/data/models/course_response.dart';
import 'package:fpdart/fpdart.dart';

abstract class CourseRepository {
  Future<Either<Failure, PaginatedApiResponse<List<CourseResponse>>>> getCourses({
    int? page,
    int? size,
    String? query,
    String? sort, // escaped JSON string
    String? status,
    String? categoryId,
    String? instructorId,
  });

  Future<Either<Failure, CourseResponse>> getCourseDetail(String id);
  
  Future<Either<Failure, CourseResponse>> approveCourse(String id);
  
  Future<Either<Failure, CourseResponse>> rejectCourse(String id, String reason);
  
  Future<Either<Failure, List<CategoryResponse>>> getCategories();
}
