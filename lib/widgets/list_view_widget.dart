import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text('Title'),
            subtitle: const Text('subtitle'),
            trailing: Checkbox(
              value: true,
              onChanged: (value) {},
              activeColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 1,
            color: kSecondaryColor,
            thickness: 1,
          );
        },
        itemCount: 10);
  }
}
