import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controllers/task_controller.dart';

class CustomAppBarAddScreenWidget extends StatelessWidget {
  const CustomAppBarAddScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: Get.width * 0.352,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Get.find<TaskController>().isEditing.value
                    ? 'Edit'
                    : 'New Task',
                style: const TextStyle(fontSize: 25.0),
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.close,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
