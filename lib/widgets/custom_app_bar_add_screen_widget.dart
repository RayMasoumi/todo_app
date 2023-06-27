import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBarAddScreenWidget extends StatelessWidget {
  const CustomAppBarAddScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: Get.width * 0.38,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'New Task',
                style: TextStyle(fontSize: 25.0),
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
