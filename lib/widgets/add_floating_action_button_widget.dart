import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/main.dart';

class AddFABWidget extends StatelessWidget {
  const AddFABWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Get.toNamed('/add_task_screen')?.then(
          (value) => MyApp.changeColor(kPrimaryColor, Brightness.light),
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
