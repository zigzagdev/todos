class TaskTitle {
  final String value;

  TaskTitle(this.value) {
    if (value.isEmpty) {
      throw ArgumentError('TaskTitle cannot be empty');
    }
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TaskTitle && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}