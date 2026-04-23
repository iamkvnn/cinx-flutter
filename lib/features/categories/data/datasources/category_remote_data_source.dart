import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/network/api_response.dart';
import '../models/category_response.dart';
import '../models/create_category_request.dart';

part 'category_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class CategoryRemoteDataSource {
  @factoryMethod
  factory CategoryRemoteDataSource(@Named('authenticatedDio') Dio dio) =
      _CategoryRemoteDataSource;

  @GET('/api/v1/categories')
  Future<ApiResponse<List<CategoryResponse>>> getCategories();

  @POST('/api/v1/categories')
  Future<ApiResponse<void>> createCategory(
    @Body() CreateCategoryRequest request,
  );

  @PUT('/api/v1/categories/{id}')
  Future<ApiResponse<void>> updateCategory(
    @Path('id') String id,
    @Body() CreateCategoryRequest request,
  );
}
