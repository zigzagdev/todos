class TaskStatus {
  final String value;

  TaskStatus(this.value) {
    if (value.isEmpty) {
      throw ArgumentError('TaskStatus cannot be empty');
    }
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TaskStatus && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}