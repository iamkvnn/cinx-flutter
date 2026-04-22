import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/paginated_api_response.dart';
import '../repositories/notification_repository.dart';
import '../../data/models/user_notification_response.dart';

@lazySingleton
class GetNotificationsUseCase {
  final NotificationRepository _repository;

  const GetNotificationsUseCase(this._repository);

  Future<Either<Failure, PaginatedApiResponse<List<UserNotificationResponse>>>> call({
    int? page,
    int? size,
  }) =>
      _repository.getNotifications(page: page, size: size);
}
