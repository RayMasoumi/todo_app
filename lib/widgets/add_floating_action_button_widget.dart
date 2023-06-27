import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class AddFABWidget extends StatelessWidget {
  const AddFABWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: kPrimaryColor,
      child: const Icon(
        Icons.add,
        color: kAccentColor,
      ),
    );
  }
}
