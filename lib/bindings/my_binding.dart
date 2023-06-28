import 'package:get/get.dart';
import 'package:todo_app/controllers/task_controller.dart';
import 'package:todo_app/controllers/text_field_controller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaskController());
    Get.put(TextFieldController());
  }
}
