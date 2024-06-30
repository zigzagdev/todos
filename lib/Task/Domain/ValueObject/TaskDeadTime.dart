class TaskDeadTime {
  final String value;

  TaskDeadTime(this.value) {
    if (value.isEmpty) {
      throw ArgumentError('TaskDeadTime cannot be empty');
    }
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TaskDeadTime && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}