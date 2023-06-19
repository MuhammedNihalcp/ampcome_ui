import 'package:ampcome_projuect/screens/bottom_nav/controller/bottom_controller.dart';

import 'package:ampcome_projuect/screens/bottom_nav/view/widget/bottom_nav_floating_button_widget.dart';
import 'package:ampcome_projuect/screens/bottom_nav/view/widget/bottom_nav_widget.dart';

import 'package:flutter/material.dart' hide ModalBottomSheetRoute;

import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});
  BottomNavController bottomNavController = Get.put(BottomNavController());
  double height = Get.height;
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: bottomNavController,
      builder: (controller) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          body: bottomNavController.page[bottomNavController.currentIndex],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const BottonNavFloatingButtonWidget(),
          bottomNavigationBar:
              BottomNavWidget(bottomNavController: bottomNavController),
        );
      },
    );
  }
}
