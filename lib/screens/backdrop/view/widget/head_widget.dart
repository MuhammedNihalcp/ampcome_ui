import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/colors.dart';

class HeadWidget extends StatelessWidget {
  const HeadWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          const Image(
            color: colorpink,
            image: AssetImage('assets/images/dropicon.png'),
          ),
          const Text(
            'Private',
            style: TextStyle(color: colorpink, fontSize: 12),
          ),
          SizedBox(
            width: width * 0.2,
          ),
          const Text(
            'Create Your Card',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close,
              color: colorblack,
            ),
          )
        ],
      ),
    );
  }
}
