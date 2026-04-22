import 'package:cinx/core/network/api_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../models/auth_request_dto.dart';
import '../models/token_response_dto.dart';

part 'auth_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class AuthRemoteDataSource {
  @factoryMethod
  factory AuthRemoteDataSource(@Named('unauthenticatedDio') Dio dio) = _AuthRemoteDataSource;

  @POST('/api/v1/auth/login')
  Future<ApiResponse<TokenResponseDto>> login(@Body() AuthRequestDto request);

  @POST('/api/v1/auth/refresh-token')
  Future<ApiResponse<TokenResponseDto>> refreshToken(@Body() Map<String, dynamic> body);
}
