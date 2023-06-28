import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app/models/task_model.dart';

class TaskController extends GetxController {
  RxBool isEditing = false.obs;
  RxInt index = 0.obs;
  RxList<TaskModel> tasks = <TaskModel>[].obs;

  @override
  void onInit() {
    var box = GetStorage();

    if (box.read('tasks') != null) {
      var list = box.read('tasks');
      for (var item in list) {
        tasks.add(
          TaskModel.fromJson(item),
        );
      }
    }

    ever(tasks, (value) {
      box.write('tasks', tasks.toJson());
    });
    super.onInit();
  }
}
