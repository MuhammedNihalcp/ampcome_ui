import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class TaskPopUpButtonsWidget extends StatelessWidget {
  const TaskPopUpButtonsWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              fixedSize: MaterialStateProperty.all(
                Size(width * 0.28, height * 0.06),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: const BorderSide(color: colorpink, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () {
              Get.back();
            },
            child: const Text('Cancel'),
          ),
          kwidth10,
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(splashbckcolor),
              fixedSize: MaterialStateProperty.all(
                Size(width * 0.42, height * 0.06),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Add',
            ),
          )
        ],
      ),
    );
  }
}
