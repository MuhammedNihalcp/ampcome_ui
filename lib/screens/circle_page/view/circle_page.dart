import 'package:ampcome_projuect/screens/circle_page/controller/circle_controller.dart';
import 'package:ampcome_projuect/core/colors.dart';
import 'package:ampcome_projuect/core/style.dart';
import 'package:ampcome_projuect/screens/circle_page/view/widget/chat_list_widget.dart';
import 'package:ampcome_projuect/screens/circle_page/view/widget/circle_head_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ScreenCircle extends StatelessWidget {
  ScreenCircle({super.key});

  CircleContoller circleContoller = Get.put(CircleContoller());
  double width = Get.width;
  double height = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: colorWhite,
      body: SafeArea(
        child: GetBuilder(
          init: circleContoller,
          builder: (controller) {
            return ListView(
              children: [
                CircleHeadWidget(height: height),
                kheight10,
                ChatListWidget(circleContoller: circleContoller),
              ],
            );
          },
        ),
      ),
    );
  }
}
