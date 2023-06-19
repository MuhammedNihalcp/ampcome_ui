import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class CircleChatBottonNavWidget extends StatelessWidget {
  const CircleChatBottonNavWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        elevation: 10,
        notchMargin: 5,
        color: colorWhite,
        child: SizedBox(
          height: height * 0.13,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: colorblack,
                  size: 30,
                ),
              ),  
              Flexible(
                child: SizedBox(
                  width: width * 0.7,
                  height: height * 0.07,
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.camera_alt_outlined,
                        color: colorblack,
                      ),
                      hintText: 'Type Message',
                      hintStyle: const TextStyle(color: colorgrey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(color: colorgrey),
                      ),
                    ),
                  ),
                ),
              ),
              kwidth20,
              const Image(
                image: AssetImage('assets/images/voiceicon.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
