
class TaskId {
  final int value;

  TaskId(this.value);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TaskId && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}