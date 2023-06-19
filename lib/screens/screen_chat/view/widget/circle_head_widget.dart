import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';
import '../../controller/chat_controller.dart';

class CircleChatHeadWidget extends StatelessWidget {
  const CircleChatHeadWidget({
    super.key,
    required this.height,
    required this.chatController,
    required this.width,
  });

  final double height;
  final ChatController chatController;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        height: height * 0.17,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 254, 254),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Oval.png'),
                  ),
                  kwidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Taruma team',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'tap here for contact info',
                        style: TextStyle(color: colorgrey),
                      )
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: colorblue,
                    ),
                  )
                ],
              ),
              LimitedBox(
                maxHeight: height * 0.05,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    chatController.itemname.length + 1,
                    (index) => index == 0
                        ? IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: colorblue,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: width * 0.2,
                              height: height * 0.04,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 228, 228, 228),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '#Healthcare',
                                  style: TextStyle(
                                      color: colorblack, fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: colorblue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
