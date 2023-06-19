import 'package:flutter/material.dart';

class CircleChatFloatingButtonWidget extends StatelessWidget {
  const CircleChatFloatingButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: true,
      backgroundColor: const Color.fromARGB(255, 9, 139, 253),
      onPressed: () {},
      child: const Image(
        image: AssetImage('assets/images/tag.png'),
      ),
    );
  }
}
