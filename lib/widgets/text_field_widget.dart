import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final int maxLines;
  final IconData icon;
  const CustomTextFieldWidget(
      {required this.icon, this.maxLines = 1, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: TextField(
        cursorColor: kPrimaryColor,
        cursorHeight: 30.0,
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
          prefixIcon: Icon(
            icon,
            color: MaterialStateColor.resolveWith((states) =>
                states.contains(MaterialState.focused)
                    ? kPrimaryColor
                    : kSecondaryColor),
          ),
        ),
        maxLines: maxLines,
      ),
    );
  }
}
