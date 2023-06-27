import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: const Icon(
          Icons.add,
          color: kAccentColor,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: Get.width,
              color: kPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios),
                          color: kAccentColor,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                          color: kAccentColor,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, top: 10),
                    child: const CircleAvatar(
                      radius: 28,
                      backgroundColor: kAccentColor,
                      child: Icon(
                        Icons.playlist_add_check,
                        color: kPrimaryColor,
                        size: 47,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 38, top: 25.0),
                    child: Text(
                      'All',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kAccentColor),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 38, top: 10.0),
                    child: Text(
                      'n Tasks',
                      style: TextStyle(color: kAccentColor),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
