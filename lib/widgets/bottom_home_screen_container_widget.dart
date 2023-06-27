import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/widgets/list_view_widget.dart';

class BottomHomeScreenContainerWidget extends StatelessWidget {
  const BottomHomeScreenContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.60,
      decoration: const BoxDecoration(
        color: kAccentColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: ListViewWidget(),
      ),
    );
  }
}
