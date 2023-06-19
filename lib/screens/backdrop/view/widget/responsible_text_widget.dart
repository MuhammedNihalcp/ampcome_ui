import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class ResponsibleTextWidget extends StatelessWidget {
  const ResponsibleTextWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          image: AssetImage('assets/images/persontickicon.png'),
        ),
        Flexible(
          child: SizedBox(
            width: width * 0.7,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Rssponsible',
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
