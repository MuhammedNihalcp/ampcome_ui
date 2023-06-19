import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class AddUserNameWidget extends StatelessWidget {
  const AddUserNameWidget({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.person_add_alt_outlined,
          color: colorblack,
        ),
        Flexible(
          child: SizedBox(
            width: width * 0.7,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Name',
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
