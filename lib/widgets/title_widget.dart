import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25.0),
      child: Text(
        'What are you planning to do?',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
