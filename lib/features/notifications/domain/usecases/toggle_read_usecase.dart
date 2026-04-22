import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/notification_repository.dart';

@lazySingleton
class ToggleNotificationReadUseCase {
  final NotificationRepository _repository;

  const ToggleNotificationReadUseCase(this._repository);

  Future<Either<Failure, void>> call(String id) => _repository.toggleRead(id);
}
