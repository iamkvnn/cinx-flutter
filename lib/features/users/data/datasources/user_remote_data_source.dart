import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../models/user_dto.dart';

part 'user_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class UserRemoteDataSource {
  @factoryMethod
  factory UserRemoteDataSource(@Named('authenticatedDio') Dio dio) =
      _UserRemoteDataSource;

  @GET('/api/v1/users')
  Future<PaginatedApiResponse<List<UserDto>>> getAllUsers({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('query') String? query,
    @Query('sort') String? sort,
    @Query('role') String? role,
    @Query('isInstructorVerified') bool? isInstructorVerified,
  });

  @GET('/api/v1/users/me')
  Future<ApiResponse<UserDto>> getCurrentUser();

  @PUT('/api/v1/users/{id}')
  Future<ApiResponse<UserDto>> updateUser(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );

  @GET('/api/v1/users/upload/presigned-url')
  Future<ApiResponse<Map<String, dynamic>>> getPresignedUrl(
    @Query('fileName') String fileName,
    @Query('contentType') String contentType,
  );

  @POST('/api/v1/auth/{id}/ban')
  Future<ApiResponse<void>> banUser(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );

  @POST('/api/v1/auth/{id}/unban')
  Future<ApiResponse<void>> unbanUser(@Path('id') String id);

  @POST('/api/v1/users/{id}/verify-instructor')
  Future<ApiResponse<void>> verifyInstructor(@Path('id') String id);

  @POST('/api/v1/users/{id}/reject-instructor')
  Future<ApiResponse<void>> rejectInstructor(
    @Path('id') String id,
    @Query('reason') String reason,
  );
}
