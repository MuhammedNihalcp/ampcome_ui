import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            image: AssetImage('assets/images/dotmenuicon.png'),
          ),
          SizedBox(
            width: width * 0.1,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'To-do',
                ),
                Icon(
                  Icons.circle_outlined,
                  size: 12,
                  color: colorblack,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
