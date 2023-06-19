import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class UserListAndTaskDetails extends StatelessWidget {
  const UserListAndTaskDetails({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: width * 0.3,
          height: height * 0.15,
          decoration: BoxDecoration(
            color: colorWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight10,
                const Image(image: AssetImage('assets/images/message.png')),
                kheight10,
                const Text(
                  'Messages',
                  style: TextStyle(color: colorgrey, fontSize: 12),
                ),
                kheight5,
                RichText(
                  text: const TextSpan(
                    text: '100+',
                    style: TextStyle(color: colorblue, fontSize: 8),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'New Message',
                        style: TextStyle(
                          fontSize: 8,
                          color: colorblack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                kheight5,
                const Image(image: AssetImage('assets/images/editavator.png'))
              ],
            ),
          ),
        ),
        Container(
          width: width * 0.3,
          height: height * 0.15,
          decoration: BoxDecoration(
            color: colorWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kheight10,
                const Image(image: AssetImage('assets/images/message.png')),
                kheight10,
                const Text(
                  'Messages',
                  style: TextStyle(color: colorgrey, fontSize: 12),
                ),
                kheight5,
                RichText(
                  text: const TextSpan(
                    text: '100+',
                    style: TextStyle(color: colorblue, fontSize: 8),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'New Message',
                        style: TextStyle(
                          fontSize: 8,
                          color: colorblack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                kheight5,
                const Image(
                  image: AssetImage('assets/images/editavator.png'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
