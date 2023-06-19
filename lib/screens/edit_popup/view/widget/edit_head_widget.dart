import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class EditHeadWidget extends StatelessWidget {
  const EditHeadWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            width: width * 0.35,
            height: height * 0.03,
            decoration: BoxDecoration(
                color: const Color.fromARGB(22, 255, 255, 255),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: const [
                kwidth10,
                Text(
                  'Work mode is on',
                  style: TextStyle(color: colorgrey),
                ),
                kwidth5,
                Image(
                  image: AssetImage('assets/images/workmodeonicon.png'),
                )
              ],
            ),
          ),
        ),
        kwidth20,
        const Padding(
          padding: EdgeInsets.only(top: 18),
          child: Text(
            'Save',
            style: TextStyle(
              color: colorWhite,
            ),
          ),
        ),
        kwidth5,
        const Padding(
          padding: EdgeInsets.only(top: 18),
          child: Icon(
            Icons.power_settings_new,
            size: 15,
            color: colorWhite,
          ),
        ),
        const Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              color: colorWhite,
            ),
          ),
        ),
      ],
    );
  }
}
