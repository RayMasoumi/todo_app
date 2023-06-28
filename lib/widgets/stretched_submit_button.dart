import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/controllers/task_controller.dart';
import 'package:todo_app/controllers/text_field_controller.dart';
import 'package:todo_app/models/task_model.dart';

class StretchedSubmitButton extends StatelessWidget {
  const StretchedSubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.height * 0.02),
      width: Get.width,
      height: Get.height * 0.1,
      child: ElevatedButton(
        style: TextButton.styleFrom(
          shape: const BeveledRectangleBorder(),
          backgroundColor: kPrimaryColor,
        ),
        onPressed: () {
          // * check if the user is editing or adding new task:
          if (Get.find<TaskController>().isEditing.value) {
            //! creating a task to edit:
            var task = Get.find<TaskController>()
                .tasks[Get.find<TaskController>().index.value];
            // * edit:
            // ? taskTitle:
            task.taskTitle = Get.find<TextFieldController>().taskTitle!.text;
            // ? taskSubtitle:
            task.taskSubtitle =
                Get.find<TextFieldController>().taskSubtitle!.text;
          } else {
            // * add new:
            Get.find<TaskController>().tasks.add(
                  TaskModel(
                    taskTitle: Get.find<TextFieldController>().taskTitle?.text,
                    taskSubtitle:
                        Get.find<TextFieldController>().taskSubtitle?.text,
                  ),
                );
          }
          Get.back();
        },
        child: Text(
          Get.find<TaskController>().isEditing.value
              ? 'Submit Changes'
              : 'Add New Task',
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
