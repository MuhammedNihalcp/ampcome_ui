import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: width * 0.25,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorblue),
              fixedSize: MaterialStateProperty.all(
                Size(width * 0.1, height * 0.02),
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
              'MRN',
              style: TextStyle(fontSize: 7),
            ),
          ),
          kwidth10,
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorblue),
              fixedSize: MaterialStateProperty.all(
                Size(width * 0.1, height * 0.02),
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
              'Location',
              style: TextStyle(
                fontSize: 7,
              ),
            ),
          ),
          kwidth10,
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
          const Spacer(),
          const Text(
            'Max 3 tags',
            style: TextStyle(
              color: colorgrey,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
