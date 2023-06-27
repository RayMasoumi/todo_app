import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/main.dart';
import 'package:todo_app/widgets/stretched_submit_button.dart';
import 'package:todo_app/widgets/custom_app_bar_add_screen_widget.dart';
import 'package:todo_app/widgets/text_field_widget.dart';
import 'package:todo_app/widgets/title_widget.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyApp.changeColor(const Color(0xFFFafafa), Brightness.dark);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBarAddScreenWidget(),
              const TitleWidget(),
              const CustomTextFieldWidget(
                icon: Icons.note_alt_outlined,
                maxLines: 2,
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              const CustomTextFieldWidget(
                icon: Icons.note_add_outlined,
              ),
              const StretchedSubmitButton()
            ],
          ),
        ),
      ),
    );
  }
}
