import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/widgets/list_view_widget.dart';
import 'package:todo_app/widgets/add_floating_action_button_widget.dart';
import 'package:todo_app/widgets/top_home_screen_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const AddFABWidget(),
      body: SafeArea(
        // * we use Stack so the pages can be stacked on each other
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const TopHomeScreenContainerWidget(),
            Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
