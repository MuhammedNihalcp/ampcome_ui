import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          image: AssetImage('assets/images/verticallineicon.png'),
        ),
        Flexible(
          child: SizedBox(
            width: width * 0.7,
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: 8,
              decoration: InputDecoration(
                hintText: 'Description',
                hintStyle: const TextStyle(
                  color: colorgrey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
