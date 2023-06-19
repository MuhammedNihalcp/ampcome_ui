import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class TaskPopUpContainerWidget extends StatelessWidget {
  const TaskPopUpContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(16.0),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
            stops: [0.01, 0.01], colors: [colorblack, colorWhite]),
        // color: colorWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'Ground Round begins at 2pm',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                kwidth5,
                Image(
                  image: AssetImage(
                    'assets/images/Indicator.png',
                  ),
                )
              ],
            ),
            const Text(
              'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
            ),
            kheight10,
            const Divider(
              thickness: 1,
            ),
            kheight10,
            Row(
              children: const [
                Icon(
                  Icons.circle,
                  color: colorblack,
                  size: 12,
                ),
                kwidth10,
                Text('Ask my senior for the dose of Abx'),
                Spacer(),
                Image(image: AssetImage('assets/images/dont.png'))
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.circle,
                  color: colorblack,
                  size: 12,
                ),
                kwidth10,
                Text('Ask my senior for the dose of Abx'),
                Spacer(),
                Image(image: AssetImage('assets/images/dont.png'))
              ],
            ),
            Row(
              children: const [
                Icon(
                  Icons.circle_outlined,
                  color: colorblack,
                  size: 12,
                ),
                kwidth10,
                Text('Ask my senior for the dose of Abx'),
                kwidth5,
                Image(
                  image: AssetImage('assets/images/Indicator.png'),
                )
              ],
            ),
            kheight10,
            Row(
              children: const [
                Image(
                  image: AssetImage('assets/images/calendar.png'),
                ),
                Spacer(),
                Image(
                  image: AssetImage('assets/images/Group 1000003453.png'),
                ),
                kwidth10,
                Image(
                  image: AssetImage('assets/images/personImage.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
