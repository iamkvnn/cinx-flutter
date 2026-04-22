import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../models/course_response.dart';
import '../models/category_response.dart';

part 'course_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class CourseRemoteDataSource {
  @factoryMethod
  factory CourseRemoteDataSource(@Named('authenticatedDio') Dio dio) = _CourseRemoteDataSource;

  @GET('/api/v1/courses')
  Future<PaginatedApiResponse<List<CourseResponse>>> getCourses({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('query') String? query,
    @Query('sort') String? sort,
    @Query('status') String? status,
    @Query('categoryId') String? categoryId,
    @Query('instructorId') String? instructorId,
  });

  @GET('/api/v1/courses/{id}')
  Future<ApiResponse<CourseResponse>> getCourseDetail(
    @Path('id') String id,
  );

  @POST('/api/v1/courses/{id}/approve')
  Future<ApiResponse<CourseResponse>> approveCourse(
    @Path('id') String id,
  );

  @POST('/api/v1/courses/{id}/reject')
  Future<ApiResponse<CourseResponse>> rejectCourse(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );

  @GET('/api/v1/categories')
  Future<ApiResponse<List<CategoryResponse>>> getCategories();
}
