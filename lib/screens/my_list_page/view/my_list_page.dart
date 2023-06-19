import 'package:ampcome_projuect/screens/my_list_page/view/widget/my_list_button_widget.dart';
import 'package:ampcome_projuect/screens/my_list_page/view/widget/my_list_head_widget.dart';
import 'package:ampcome_projuect/screens/my_list_page/view/widget/my_list_list_widget.dart';
import 'package:ampcome_projuect/screens/my_list_page/view/widget/my_list_search_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/style.dart';

class ScreenMyList extends StatelessWidget {
  ScreenMyList({super.key});
  double height = Get.height;
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            MyListHeadWidget(height: height),
            kheight20,
            MyButtonWidget(width: width, height: height),
            kheight10,
            MyListSearchWidget(height: height),
            kheight10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'List Created By Zyad Elmohya on 12/2/2023 6:00PM',
                    style: listtextstyle,
                  ),
                  Text(
                    'Non-Medical viewer',
                    style: listtextstyle,
                  ),
                ],
              ),
            ),
            MyListListWidget(height: height, width: width)
          ],
        ),
      ),
    );
  }
}
