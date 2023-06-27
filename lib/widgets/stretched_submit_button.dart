import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants.dart';

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
        onPressed: () {},
        child: const Text(
          'submit',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
