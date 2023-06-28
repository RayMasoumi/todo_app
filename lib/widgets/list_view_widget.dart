import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:get/get.dart';
import 'package:todo_app/controllers/task_controller.dart';
import 'package:todo_app/controllers/text_field_controller.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.separated(
          itemBuilder: (context, index) {
            var task = Get.find<TaskController>().tasks[index];
            return ListTile(
              // * long press on an item to delete it:
              onLongPress: () {
                Get.defaultDialog(
                  // title: 'Alert!',
                  middleText: 'Are you sure you want to delete this task?',
                  middleTextStyle: const TextStyle(fontSize: 16.0),
                  // * cancel button:
                  textCancel: 'No',
                  cancelTextColor: kPrimaryColor,
                  // * confirm button:
                  textConfirm: 'Yes',
                  confirmTextColor: Colors.white,
                  onConfirm: () {
                    Get.find<TaskController>().tasks.removeAt(index);
                    Get.back();
                  },
                  // * style:
                  buttonColor: kPrimaryColor,
                  // * dialog can\'nt be dismissed by clicking on the screen:
                  barrierDismissible: false,
                );
              },
              // * tap on an item to edit it:
              onTap: () {
                // * getting the index first:
                Get.find<TaskController>().index.value = index;
                Get.find<TaskController>().isEditing.value = true;
                // ? replace the task with the value of th text field:
                Get.find<TextFieldController>().taskTitle!.text =
                    Get.find<TaskController>().tasks[index].taskTitle!;

                Get.find<TextFieldController>().taskSubtitle!.text =
                    Get.find<TaskController>().tasks[index].taskSubtitle!;
                Get.toNamed('/add_task_screen');
              },
              title:
                  Text(Get.find<TaskController>().tasks[index].taskTitle ?? ''),
              subtitle: Text(
                  Get.find<TaskController>().tasks[index].taskSubtitle ?? ''),
              trailing: Checkbox(
                value: Get.find<TaskController>().tasks[index].status,
                onChanged: (value) {
                  task.status = !task.status!;
                  Get.find<TaskController>().tasks[index] = task;
                },
                activeColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 1,
              color: kSecondaryColor,
              thickness: 1,
            );
          },
          itemCount: Get.find<TaskController>().tasks.length);
    });
  }
}
