import 'package:fpdart/fpdart.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../../data/models/user_notification_response.dart';

abstract class NotificationRepository {
  Future<Either<Failure, PaginatedApiResponse<List<UserNotificationResponse>>>> getNotifications({
    int? page,
    int? size,
  });

  Future<Either<Failure, int>> getUnreadCount();

  Future<Either<Failure, void>> toggleRead(String id);
}
