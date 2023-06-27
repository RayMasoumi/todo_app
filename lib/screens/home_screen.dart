import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/main.dart';
import 'package:todo_app/widgets/bottom_home_screen_container_widget.dart';
import 'package:todo_app/widgets/add_floating_action_button_widget.dart';
import 'package:todo_app/widgets/top_home_screen_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyApp.changeColor(kPrimaryColor, Brightness.light);
    return const Scaffold(
      floatingActionButton: AddFABWidget(),
      body: SafeArea(
        // * we use Stack so the pages can be stacked on each other
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            TopHomeScreenContainerWidget(),
            BottomHomeScreenContainerWidget(),
          ],
        ),
      ),
    );
  }
}
