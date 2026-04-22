import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/notification_repository.dart';

@lazySingleton
class GetUnreadNotificationCountUseCase {
  final NotificationRepository _repository;

  const GetUnreadNotificationCountUseCase(this._repository);

  Future<Either<Failure, int>> call() => _repository.getUnreadCount();
}
