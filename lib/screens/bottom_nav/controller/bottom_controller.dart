import 'package:ampcome_projuect/screens/circle_page/view/circle_page.dart';
import 'package:ampcome_projuect/screens/message_page/view/message_page.dart';
import 'package:ampcome_projuect/screens/my_list_page/view/my_list_page.dart';
import 'package:ampcome_projuect/screens/my_task_page/view/my_task_page.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  int currentIndex = 0;
  void chageIndex(int index) {
    currentIndex = index;
    update();
  }

  final page = [
    ScreenCircle(),
    ScreenMessage(),
    ScreenMyTask(),
    ScreenMyList(),
  ];
  bool isExpanded = false;
  void changeExpanded() {
    isExpanded = !isExpanded;
    update();
  }
}
