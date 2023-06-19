import 'package:ampcome_projuect/screens/my_task_page/controller/my_task_controller.dart';

import 'package:ampcome_projuect/core/style.dart';
import 'package:ampcome_projuect/screens/my_task_page/view/widget/my_task_button_widget.dart';
import 'package:ampcome_projuect/screens/my_task_page/view/widget/my_task_head_widget.dart';
import 'package:ampcome_projuect/screens/my_task_page/view/widget/my_task_tab_bar_view_widget.dart';
import 'package:ampcome_projuect/screens/my_task_page/view/widget/my_task_tab_bar_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenMyTask extends StatelessWidget {
  ScreenMyTask({super.key});

  double height = Get.height;
  double width = Get.width;
  MyTaskController myTaskController = Get.put(MyTaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            MyTaskHeadWidget(height: height),
            kheight20,
            MyTaskButtonWidget(width: width, height: height),
            MyTaskTabBarWidget(
                myTaskController: myTaskController, width: width),
            MyTaskTabBarViewWidget(
                myTaskController: myTaskController, height: height)
          ],
        ),
      ),
    );
  }
}
