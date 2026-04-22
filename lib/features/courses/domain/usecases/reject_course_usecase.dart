import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/course_repository.dart';
import '../../data/models/course_response.dart';

@lazySingleton
class RejectCourseUseCase {
  final CourseRepository repository;

  RejectCourseUseCase(this.repository);

  Future<Either<Failure, CourseResponse>> call(String id, String reason) {
    return repository.rejectCourse(id, reason);
  }
}