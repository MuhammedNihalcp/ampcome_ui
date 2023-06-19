import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class MyListSearchWidget extends StatelessWidget {
  const MyListSearchWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Container(
        width: double.infinity,
        height: height * 0.05,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 230, 230),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: const Color.fromARGB(255, 230, 230, 230), width: 0),
        ),
        child: Row(
          children: [
            const Image(
              width: 50,
              image: AssetImage('assets/images/dropicon.png'),
            ),
            const Text(
              'Health Care GP, Emergencies GP',
              style: TextStyle(color: colorgrey),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: colorgrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
