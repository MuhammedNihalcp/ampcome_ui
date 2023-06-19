import 'package:flutter/material.dart';

class SaveTextWidget extends StatelessWidget {
  const SaveTextWidget({
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
        children: const [
          Text(
            'Save As a Template',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            'Yse',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.keyboard_arrow_down_rounded)
        ],
      ),
    );
  }
}
