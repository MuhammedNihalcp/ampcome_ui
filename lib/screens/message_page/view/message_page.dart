import 'package:ampcome_projuect/screens/circle_page/controller/circle_controller.dart';
import 'package:ampcome_projuect/screens/message_page/view/widget/message_head_widget.dart';
import 'package:ampcome_projuect/screens/message_page/view/widget/message_list_widget.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/style.dart';

class ScreenMessage extends StatelessWidget {
  ScreenMessage({super.key});

  CircleContoller circleContoller = Get.put(CircleContoller());
  double width = Get.width;
  double height = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder(
          init: circleContoller,
          builder: (controller) {
            return ListView(
              children: [
                MessageHeadWidget(height: height),
                kheight10,
                MessageListWidget(
                    circleContoller: circleContoller, width: width),
              ],
            );
          },
        ),
      ),
    );
  }
}
