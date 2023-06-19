import 'package:flutter/material.dart';

class HighWidget extends StatelessWidget {
  const HighWidget({
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
            image: AssetImage('assets/images/ver.png'),
          ),
          SizedBox(
            width: width * 0.1,
          ),
          const Text(
            'High',
          ),
          const Spacer(),
          const Icon(Icons.keyboard_arrow_down_outlined)
        ],
      ),
    );
  }
}