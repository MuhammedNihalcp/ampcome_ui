import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class UserTextAndImageWidget extends StatelessWidget {
  const UserTextAndImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome Back !',
                style: TextStyle(color: colorWhite),
              ),
              Text(
                'Ahamed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: colorWhite,
                ),
              ),
              kheight5,
              Text(
                'This is a summary when you was offline.',
                style: TextStyle(color: colorWhite, fontSize: 10),
              )
            ],
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/Oval.png'),
          )
        ],
      ),
    );
  }
}
