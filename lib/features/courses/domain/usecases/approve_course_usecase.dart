import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/course_repository.dart';
import '../../data/models/course_response.dart';

@lazySingleton
class ApproveCourseUseCase {
  final CourseRepository repository;

  ApproveCourseUseCase(this.repository);

  Future<Either<Failure, CourseResponse>> call(String id) {
    return repository.approveCourse(id);
  }
}
