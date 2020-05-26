

class Task {

  List<Task> tasks;
  String note, title, taskId, repeat;
  DateTime timeToComplete;
  bool completed;
  DateTime deadline;
  List<DateTime> remiders;

  Task(this.title, this.completed, this.taskId);

}