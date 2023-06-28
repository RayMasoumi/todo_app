import 'package:get/get.dart';
import 'package:todo_app/models/task_model.dart';

class TaskController extends GetxController {
  RxBool isEditing = false.obs;
  RxInt index = 0.obs;
  RxList<TaskModel> tasks = <TaskModel>[].obs;
}
