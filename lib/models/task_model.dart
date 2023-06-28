class TaskModel {
  String? taskTitle;
  String? taskSubtitle;
  bool? status;

  TaskModel({
    required this.taskTitle,
    this.taskSubtitle,
    this.status = false,
  });
}
