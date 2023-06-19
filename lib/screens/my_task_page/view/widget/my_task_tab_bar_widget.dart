import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/colors.dart';
import '../../controller/my_task_controller.dart';

class MyTaskTabBarWidget extends StatelessWidget {
  const MyTaskTabBarWidget({
    super.key,
    required this.myTaskController,
    required this.width,
  });

  final MyTaskController myTaskController;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: myTaskController,
        builder: (context) {
          return TabBar(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            labelColor: colorblue,
            dividerColor: colorblue,
            indicatorColor: colorblue,
            automaticIndicatorColorAdjustment: false,
            unselectedLabelColor: colorgrey,
            controller: myTaskController.tabController,
            overlayColor: MaterialStateProperty.all(colorgrey),
            tabs: const [
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'To Me',
              ),
              Tab(
                text: 'By Me',
              ),
              Tab(
                text: 'Done',
              )
            ],
          );
        });
  }
}
