abstract class Failure {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server Error']);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network Connection Error']);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Cache Error']);
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'Unknown Error']);
}
