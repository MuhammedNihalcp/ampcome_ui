import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class MyTaskButtonWidget extends StatelessWidget {
  const MyTaskButtonWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: colorblue,
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colorblue),
            fixedSize: MaterialStateProperty.all(
              Size(width * 0.2, height * 0.04),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: const BorderSide(color: colorblue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'My Tasks',
            style: tasktextstyle,
          ),
        ),
        kwidth10,
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 240, 240, 240)),
            fixedSize: MaterialStateProperty.all(
              Size(width * 0.2, height * 0.04),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                // side: const BorderSide(color: colorblue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'For MRL',
            style: tasktextstyle2,
          ),
        ),
        kwidth10,
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 240, 240, 240)),
            fixedSize: MaterialStateProperty.all(
              Size(width * 0.24, height * 0.04),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                // side: const BorderSide(color: colorblue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'For Clearance',
            style: tasktextstyle2,
          ),
        ),
        kwidth10,
        DottedBorder(
          color: colorblue,
          dashPattern: const [3, 3],
          strokeWidth: 1,
          borderType: BorderType.RRect,
          radius: const Radius.circular(10),
          strokeCap: StrokeCap.round,
          child: const Icon(Icons.add),
        ),
        kwidth10,
        const Image(
          image: AssetImage('assets/images/line_icone.png'),
        )
      ],
    );
  }
}
