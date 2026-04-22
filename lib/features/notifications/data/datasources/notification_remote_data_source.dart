import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../models/user_notification_response.dart';

part 'notification_remote_data_source.g.dart';

@RestApi()
@injectable
abstract class NotificationRemoteDataSource {
  @factoryMethod
  factory NotificationRemoteDataSource(@Named('authenticatedDio') Dio dio) =
      _NotificationRemoteDataSource;

  @GET('/api/v1/notifications')
  Future<PaginatedApiResponse<List<UserNotificationResponse>>> getNotifications({
    @Query('page') int? page,
    @Query('size') int? size,
  });

  @GET('/api/v1/notifications/unread-count')
  Future<ApiResponse<int>> getUnreadCount();

  @POST('/api/v1/notifications/{notificationId}/toggle-read')
  Future<ApiResponse<void>> toggleRead(@Path('notificationId') String notificationId);
}
