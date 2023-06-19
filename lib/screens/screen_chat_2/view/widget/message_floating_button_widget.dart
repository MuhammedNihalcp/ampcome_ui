import 'package:flutter/material.dart';

class MessageFloatingButtonWidget extends StatelessWidget {
  const MessageFloatingButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: true,
      backgroundColor: const Color.fromARGB(255, 6, 250, 2),
      onPressed: () {},
      child: const Image(
        image: AssetImage('assets/images/flotingsendicon.png'),
      ),
    );
  }
}
