import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../services/token_storage.dart';

@injectable
class AuthInterceptor extends Interceptor {
  final TokenStorage _tokenStorage;
  final Dio _dio;

  AuthInterceptor(this._tokenStorage, @Named('unauthenticatedDio') this._dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await _tokenStorage.getAccessToken();
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final refreshToken = await _tokenStorage.getRefreshToken();
      if (refreshToken != null) {
        try {
          final response = await _dio.post(
            '/api/v1/auth/refresh-token',
            data: {'token': refreshToken},
          );

          if (response.statusCode == 200 && response.data != null) {
            final data = response.data['data'];
            final newAccessToken = data['accessToken'];
            final newRefreshToken = data['refreshToken'];

            await _tokenStorage.saveTokens(
              accessToken: newAccessToken,
              refreshToken: newRefreshToken,
            );

            // Retry the failed request with new token
            final options = err.requestOptions;
            options.headers['Authorization'] = 'Bearer $newAccessToken';
            final cloneReq = await _dio.fetch(options);
            return handler.resolve(cloneReq);
          }
        } catch (e) {
          // Refresh failed, clear tokens
          await _tokenStorage.clearTokens();
          // Trigger logout globally (can use a Stream controller or equivalent)
        }
      } else {
        await _tokenStorage.clearTokens();
      }
    }
    handler.next(err);
  }
}
