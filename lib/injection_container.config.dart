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
import 'package:cinx/features/auth/domain/usecases/change_password_usecase.dart'
    as _i584;
import 'package:cinx/features/auth/domain/usecases/check_auth_usecase.dart'
    as _i330;
import 'package:cinx/features/auth/domain/usecases/login_usecase.dart'
    as _i1048;
import 'package:cinx/features/auth/domain/usecases/logout_usecase.dart'
    as _i725;
import 'package:cinx/features/auth/domain/usecases/reset_password_usecase.dart'
    as _i465;
import 'package:cinx/features/auth/domain/usecases/send_change_password_otp_usecase.dart'
    as _i946;
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
import 'package:cinx/features/courses/presentation/bloc/course_detail_bloc.dart'
    as _i96;
import 'package:cinx/features/courses/presentation/bloc/course_list_bloc.dart'
    as _i723;
import 'package:cinx/features/dashboard/data/datasources/dashboard_remote_data_source.dart'
    as _i436;
import 'package:cinx/features/dashboard/data/repositories/dashboard_repository_impl.dart'
    as _i708;
import 'package:cinx/features/dashboard/domain/repositories/dashboard_repository.dart'
    as _i222;
import 'package:cinx/features/dashboard/domain/usecases/get_dashboard_metrics_usecase.dart'
    as _i846;
import 'package:cinx/features/dashboard/presentation/bloc/dashboard_bloc.dart'
    as _i1067;
import 'package:cinx/features/notifications/data/datasources/notification_remote_data_source.dart'
    as _i1033;
import 'package:cinx/features/notifications/data/repositories/notification_repository_impl.dart'
    as _i834;
import 'package:cinx/features/notifications/domain/repositories/notification_repository.dart'
    as _i27;
import 'package:cinx/features/notifications/domain/usecases/get_notifications_usecase.dart'
    as _i943;
import 'package:cinx/features/notifications/domain/usecases/get_unread_count_usecase.dart'
    as _i583;
import 'package:cinx/features/notifications/domain/usecases/toggle_read_usecase.dart'
    as _i614;
import 'package:cinx/features/notifications/presentation/bloc/notification_bloc.dart'
    as _i136;
import 'package:cinx/features/users/data/datasources/user_remote_data_source.dart'
    as _i368;
import 'package:cinx/features/users/data/repositories/user_repository_impl.dart'
    as _i694;
import 'package:cinx/features/users/domain/repositories/user_repository.dart'
    as _i259;
import 'package:cinx/features/users/domain/usecases/get_current_user_usecase.dart'
    as _i1047;
import 'package:cinx/features/users/domain/usecases/get_presigned_url_usecase.dart'
    as _i84;
import 'package:cinx/features/users/domain/usecases/get_users_usecase.dart'
    as _i944;
import 'package:cinx/features/users/domain/usecases/update_user_usecase.dart'
    as _i376;
import 'package:cinx/features/users/domain/usecases/upload_file_to_presigned_url_usecase.dart'
    as _i593;
import 'package:cinx/features/users/presentation/bloc/profile/profile_bloc.dart'
    as _i246;
import 'package:cinx/features/users/presentation/bloc/user_list_bloc.dart'
    as _i244;
import 'package:cinx/features/vouchers/data/datasources/voucher_remote_data_source.dart'
    as _i759;
import 'package:cinx/features/vouchers/data/repositories/voucher_repository_impl.dart'
    as _i873;
import 'package:cinx/features/vouchers/domain/repositories/voucher_repository.dart'
    as _i86;
import 'package:cinx/features/vouchers/domain/usecases/create_voucher_usecase.dart'
    as _i721;
import 'package:cinx/features/vouchers/domain/usecases/delete_voucher_usecase.dart'
    as _i1064;
import 'package:cinx/features/vouchers/domain/usecases/get_vouchers_usecase.dart'
    as _i629;
import 'package:cinx/features/vouchers/presentation/bloc/voucher_list_bloc.dart'
    as _i386;
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
    gh.factory<_i436.DashboardRemoteDataSource>(
      () => _i436.DashboardRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticatedDio'),
      ),
    );
    gh.factory<_i1033.NotificationRemoteDataSource>(
      () => _i1033.NotificationRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticatedDio'),
      ),
    );
    gh.factory<_i368.UserRemoteDataSource>(
      () => _i368.UserRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticatedDio'),
      ),
    );
    gh.factory<_i759.VoucherRemoteDataSource>(
      () => _i759.VoucherRemoteDataSource(
        gh<_i361.Dio>(instanceName: 'authenticatedDio'),
      ),
    );
    gh.lazySingleton<_i584.ChangePasswordUseCase>(
      () => _i584.ChangePasswordUseCase(gh<_i603.AuthRepository>()),
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
    gh.lazySingleton<_i465.ResetPasswordUseCase>(
      () => _i465.ResetPasswordUseCase(gh<_i603.AuthRepository>()),
    );
    gh.lazySingleton<_i946.SendChangePasswordOtpUseCase>(
      () => _i946.SendChangePasswordOtpUseCase(gh<_i603.AuthRepository>()),
    );
    gh.lazySingleton<_i27.NotificationRepository>(
      () => _i834.NotificationRepositoryImpl(
        gh<_i1033.NotificationRemoteDataSource>(),
      ),
    );
    gh.factory<_i1013.AuthBloc>(
      () => _i1013.AuthBloc(
        gh<_i1048.LoginUseCase>(),
        gh<_i725.LogoutUseCase>(),
        gh<_i330.CheckAuthUseCase>(),
        gh<_i946.SendChangePasswordOtpUseCase>(),
        gh<_i465.ResetPasswordUseCase>(),
      ),
    );
    gh.lazySingleton<_i259.UserRepository>(
      () => _i694.UserRepositoryImpl(
        gh<_i368.UserRemoteDataSource>(),
        gh<_i361.Dio>(instanceName: 'unauthenticatedDio'),
      ),
    );
    gh.lazySingleton<_i1028.CourseRepository>(
      () => _i119.CourseRepositoryImpl(gh<_i549.CourseRemoteDataSource>()),
    );
    gh.lazySingleton<_i222.DashboardRepository>(
      () =>
          _i708.DashboardRepositoryImpl(gh<_i436.DashboardRemoteDataSource>()),
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
    gh.lazySingleton<_i1047.GetCurrentUserUseCase>(
      () => _i1047.GetCurrentUserUseCase(gh<_i259.UserRepository>()),
    );
    gh.lazySingleton<_i84.GetPresignedUrlUseCase>(
      () => _i84.GetPresignedUrlUseCase(gh<_i259.UserRepository>()),
    );
    gh.lazySingleton<_i376.UpdateUserUseCase>(
      () => _i376.UpdateUserUseCase(gh<_i259.UserRepository>()),
    );
    gh.lazySingleton<_i593.UploadFileToPresignedUrlUseCase>(
      () => _i593.UploadFileToPresignedUrlUseCase(gh<_i259.UserRepository>()),
    );
    gh.lazySingleton<_i86.VoucherRepository>(
      () => _i873.VoucherRepositoryImpl(gh<_i759.VoucherRemoteDataSource>()),
    );
    gh.factory<_i246.ProfileBloc>(
      () => _i246.ProfileBloc(
        gh<_i1047.GetCurrentUserUseCase>(),
        gh<_i376.UpdateUserUseCase>(),
        gh<_i84.GetPresignedUrlUseCase>(),
        gh<_i593.UploadFileToPresignedUrlUseCase>(),
        gh<_i946.SendChangePasswordOtpUseCase>(),
        gh<_i584.ChangePasswordUseCase>(),
      ),
    );
    gh.lazySingleton<_i944.GetUsersUseCase>(
      () => _i944.GetUsersUseCase(gh<_i259.UserRepository>()),
    );
    gh.lazySingleton<_i721.CreateVoucherUseCase>(
      () => _i721.CreateVoucherUseCase(gh<_i86.VoucherRepository>()),
    );
    gh.lazySingleton<_i1064.DeleteVoucherUseCase>(
      () => _i1064.DeleteVoucherUseCase(gh<_i86.VoucherRepository>()),
    );
    gh.lazySingleton<_i629.GetVouchersUseCase>(
      () => _i629.GetVouchersUseCase(gh<_i86.VoucherRepository>()),
    );
    gh.lazySingleton<_i846.GetDashboardMetricsUseCase>(
      () => _i846.GetDashboardMetricsUseCase(gh<_i222.DashboardRepository>()),
    );
    gh.lazySingleton<_i943.GetNotificationsUseCase>(
      () => _i943.GetNotificationsUseCase(gh<_i27.NotificationRepository>()),
    );
    gh.lazySingleton<_i583.GetUnreadNotificationCountUseCase>(
      () => _i583.GetUnreadNotificationCountUseCase(
        gh<_i27.NotificationRepository>(),
      ),
    );
    gh.lazySingleton<_i614.ToggleNotificationReadUseCase>(
      () => _i614.ToggleNotificationReadUseCase(
        gh<_i27.NotificationRepository>(),
      ),
    );
    gh.factory<_i723.CourseListBloc>(
      () => _i723.CourseListBloc(gh<_i171.GetCoursesUseCase>()),
    );
    gh.factory<_i386.VoucherListBloc>(
      () => _i386.VoucherListBloc(
        gh<_i629.GetVouchersUseCase>(),
        gh<_i721.CreateVoucherUseCase>(),
        gh<_i1064.DeleteVoucherUseCase>(),
      ),
    );
    gh.factory<_i96.CourseDetailBloc>(
      () => _i96.CourseDetailBloc(
        gh<_i1028.CourseRepository>(),
        gh<_i323.ApproveCourseUseCase>(),
        gh<_i822.RejectCourseUseCase>(),
      ),
    );
    gh.factory<_i244.UserListBloc>(
      () => _i244.UserListBloc(gh<_i944.GetUsersUseCase>()),
    );
    gh.factory<_i1067.DashboardBloc>(
      () => _i1067.DashboardBloc(gh<_i846.GetDashboardMetricsUseCase>()),
    );
    gh.factory<_i136.NotificationBloc>(
      () => _i136.NotificationBloc(
        gh<_i943.GetNotificationsUseCase>(),
        gh<_i583.GetUnreadNotificationCountUseCase>(),
        gh<_i614.ToggleNotificationReadUseCase>(),
      ),
    );
    return this;
  }
}

class _$NetworkModule extends _i593.NetworkModule {}
