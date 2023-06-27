import 'package:get/get.dart';
import 'package:todo_app/screens/add_task_screen.dart';
import 'package:todo_app/screens/home_screen.dart';

class MyRoutes {
  static List<GetPage> get pages => [
        GetPage(name: '/home_screen', page: () => const HomeScreen()),
        GetPage(name: '/add_task_screen', page: () => const AddTaskScreen()),
      ];
}
