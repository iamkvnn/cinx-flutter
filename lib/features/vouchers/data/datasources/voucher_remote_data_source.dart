import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../models/voucher_response.dart';
import '../models/create_voucher_request.dart';

part 'voucher_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class VoucherRemoteDataSource {
  @factoryMethod
  factory VoucherRemoteDataSource(@Named('authenticatedDio') Dio dio) =
      _VoucherRemoteDataSource;

  @GET('/api/v1/vouchers')
  Future<PaginatedApiResponse<List<VoucherResponse>>> getVouchers({
    @Query('page') int? page,
    @Query('size') int? size,
    @Query('query') String? query,
    @Query('sort') String? sort,
  });

  @POST('/api/v1/vouchers')
  Future<ApiResponse<void>> createVoucher(
      @Body() CreateVoucherRequest request);

  @DELETE('/api/v1/vouchers/{id}')
  Future<ApiResponse<void>> deleteVoucher(@Path('id') String id);
}
