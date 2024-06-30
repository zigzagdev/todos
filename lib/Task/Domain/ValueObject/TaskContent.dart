class TaskContent {
  final String value;

  TaskContent(this.value) {
    if (value.isEmpty) {
      throw ArgumentError('TaskContent cannot be empty');
    }
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TaskContent && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}