import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'auth_interceptor.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  @Named('baseOptions')
  BaseOptions get options => BaseOptions(
        baseUrl: 'https://api.shinyjewelry.shop',
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        contentType: Headers.jsonContentType,
      );

  @lazySingleton
  @Named('authenticatedDio')
  Dio authenticatedDio(
    @Named('baseOptions') BaseOptions options,
    AuthInterceptor authInterceptor,
  ) {
    final dio = Dio(options);
    dio.interceptors.add(authInterceptor);
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    return dio;
  }

  @lazySingleton
  @Named('unauthenticatedDio')
  Dio unauthenticatedDio(@Named('baseOptions') BaseOptions options) {
    final dio = Dio(options);
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    return dio;
  }
}
