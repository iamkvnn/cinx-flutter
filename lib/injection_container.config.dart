// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cinx/core/network/auth_interceptor.dart' as _i60;
import 'package:cinx/core/network/dio_client.dart' as _i593;
import 'package:cinx/core/router/app_router.dart' as _i599;
import 'package:cinx/core/services/token_storage.dart' as _i354;
import 'package:cinx/features/auth/data/datasources/auth_remote_data_source.dart'
    as _i773;
import 'package:cinx/features/auth/data/repositories/auth_repository_impl.dart'
    as _i975;
import 'package:cinx/features/auth/domain/repositories/auth_repository.dart'
    as _i603;
import 'package:cinx/features/auth/domain/usecases/check_auth_usecase.dart'
    as _i330;
import 'package:cinx/features/auth/domain/usecases/login_usecase.dart'
    as _i1048;
import 'package:cinx/features/auth/domain/usecases/logout_usecase.dart'
    as _i725;
import 'package:cinx/features/auth/presentation/bloc/auth_bloc.dart' as _i1013;
import 'package:cinx/features/courses/data/datasources/course_remote_data_source.dart'
    as _i549;
import 'package:cinx/features/courses/data/repositories/course_repository_impl.dart'
    as _i119;
import 'package:cinx/features/courses/domain/repositories/course_repository.dart'
    as _i1028;
import 'package:cinx/features/courses/domain/usecases/approve_course_usecase.dart'
    as _i323;
import 'package:cinx/features/courses/domain/usecases/get_courses_usecase.dart'
    as _i171;
import 'package:cinx/features/courses/domain/usecases/reject_course_usecase.dart'
    as _i822;
import 'package:cinx/features/courses/presentation/bloc/course_list_bloc.dart'
    as _i723;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i599.AppRouter>(() => _i599.AppRouter());
    gh.lazySingleton<_i354.TokenStorage>(() => _i354.TokenStorage());
    gh.lazySingleton<_i361.BaseOptions>(
      () => networkModule.options,
      instanceName: 'baseOptions',
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.unauthenticatedDio(
        gh<_i361.BaseOptions>(instanceName: 'baseOptions'),
      ),
      instanceName: 'unauthenticatedDio',
    );
    gh.factory<_i773.AuthRemoteDataSource>(
      () => _i773.AuthRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'unauthenticatedDio'),
      ),
    );
    gh.factory<_i60.AuthInterceptor>(
      () => _i60.AuthInterceptor(
        gh<_i354.TokenStorage>(),
        gh<_i361.Dio>(instanceName: 'unauthenticatedDio'),
      ),
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkModule.authenticatedDio(
        gh<_i361.BaseOptions>(instanceName: 'baseOptions'),
        gh<_i60.AuthInterceptor>(),
      ),
      instanceName: 'authenticatedDio',
    );
    gh.lazySingleton<_i603.AuthRepository>(
      () => _i975.AuthRepositoryImpl(
        gh<_i773.AuthRemoteDataSource>(),
        gh<_i354.TokenStorage>(),
      ),
    );
    gh.factory<_i549.CourseRemoteDataSource>(
      () => _i549.CourseRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticatedDio'),
      ),
    );
    gh.lazySingleton<_i330.CheckAuthUseCase>(
      () => _i330.CheckAuthUseCase(gh<_i603.AuthRepository>()),
    );
    gh.lazySingleton<_i1048.LoginUseCase>(
      () => _i1048.LoginUseCase(gh<_i603.AuthRepository>()),
    );
    gh.lazySingleton<_i725.LogoutUseCase>(
      () => _i725.LogoutUseCase(gh<_i603.AuthRepository>()),
    );
    gh.factory<_i1013.AuthBloc>(
      () => _i1013.AuthBloc(
        gh<_i1048.LoginUseCase>(),
        gh<_i725.LogoutUseCase>(),
        gh<_i330.CheckAuthUseCase>(),
      ),
    );
    gh.lazySingleton<_i1028.CourseRepository>(
      () => _i119.CourseRepositoryImpl(gh<_i549.CourseRemoteDataSource>()),
    );
    gh.lazySingleton<_i323.ApproveCourseUseCase>(
      () => _i323.ApproveCourseUseCase(gh<_i1028.CourseRepository>()),
    );
    gh.lazySingleton<_i171.GetCoursesUseCase>(
      () => _i171.GetCoursesUseCase(gh<_i1028.CourseRepository>()),
    );
    gh.lazySingleton<_i822.RejectCourseUseCase>(
      () => _i822.RejectCourseUseCase(gh<_i1028.CourseRepository>()),
    );
    gh.factory<_i723.CourseListBloc>(
      () => _i723.CourseListBloc(gh<_i171.GetCoursesUseCase>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i593.NetworkModule {}
