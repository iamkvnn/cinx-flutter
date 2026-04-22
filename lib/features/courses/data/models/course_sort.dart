enum SortDirection { asc, desc }

class CourseSort {
  final String field;
  final SortDirection direction;

  const CourseSort({
    required this.field,
    required this.direction,
  });

  String toJson() {
    return '{"$field": "${direction.name.toUpperCase()}"}';
  }
}