import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/controllers/text_field_controller.dart';
import 'package:todo_app/main.dart';

import '../controllers/task_controller.dart';

class AddFABWidget extends StatelessWidget {
  const AddFABWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Get.find<TaskController>().isEditing.value = false;
        Get.find<TextFieldController>().taskTitle!.text = '';
        Get.find<TextFieldController>().taskSubtitle!.text = '';
        Get.toNamed('/add_task_screen')?.then(
          (value) => MyApp.changeColor(
            kPrimaryColor,
            Brightness.light,
          ),
        );
      },
      backgroundColor: kPrimaryColor,
      child: const Icon(
        Icons.add,
        color: kAccentColor,
      ),
    );
  }
}
