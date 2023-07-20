class Task {
  String taskName;
  DateTime finalTime;

  Task(
    this.taskName,
    this.finalTime,
  );
}

class TaskInfo {
  static List<Task> recommendedTasks = [
    Task(
      'Document Verification',
      DateTime(2023, 12, 1, 20, 0),
    ),
    Task(
      'Document Verification',
      DateTime(2023, 12, 1, 20, 0),
    ),
    Task(
      'Document Verification',
      DateTime(2023, 12, 1, 20, 0),
    ),
    Task(
      'Document Verification',
      DateTime(2023, 12, 1, 20, 0),
    )
  ];
  static bool changed = false;
  static List<Task> displayedTasks = [
    Task('Verification Process with Team', DateTime(2023, 12, 1, 20, 0)),
    Task(
      'Mukunda boarding plane',
      DateTime(2023, 12, 1, 20, 0),
    ),
  ];
  int a = 0;
  TaskInfo(Task task) {
    displayedTasks.add(task);
  }
}
