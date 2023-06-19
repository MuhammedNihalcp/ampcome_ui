import 'package:ampcome_projuect/screens/task_pop_up/view/widget/task_pop_up_bottons_widget.dart';
import 'package:ampcome_projuect/screens/task_pop_up/view/widget/task_pop_up_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/style.dart';

class TaskPopUp {
  double height = Get.height;
  double width = Get.width;
  Future<dynamic> showTaskDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          backgroundColor: Colors.transparent,
          children: [
            Column(
              children: [
                const TaskPopUpContainerWidget(),
                kheight10,
                TaskPopUpButtonsWidget(width: width, height: height)
              ],
            ),
          ],
        );
      },
    );
  }
}
