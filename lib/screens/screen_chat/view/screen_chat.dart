import 'package:ampcome_projuect/screens/screen_chat/view/widget/circle_chat_bottom_nav_widget.dart';
import 'package:ampcome_projuect/screens/screen_chat/view/widget/circle_chat_floating_widget.dart';
import 'package:ampcome_projuect/screens/screen_chat/view/widget/circle_head_widget.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:intl/intl.dart';

import '../../../core/colors.dart';

import '../controller/chat_controller.dart';

class ScreenChat extends StatelessWidget {
  ScreenChat({super.key});
  double height = Get.height;
  double width = Get.width;
  ChatController chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CircleChatHeadWidget(
                height: height, chatController: chatController, width: width),
            ListView.builder(
              itemCount: chatController.messages.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8, top: 8, left: 8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment:
                          chatController.messages[index].messageType ==
                                  "receiver"
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                      children: [
                        Bubble(
                          // nipWidth: 6,
                          // nipHeight: 5,
                          nipRadius: 1,
                          radius: const Radius.circular(10),
                          alignment:
                              chatController.messages[index].messageType ==
                                      "receiver"
                                  ? Alignment.topLeft
                                  : Alignment.topRight,
                          nip: chatController.messages[index].messageType ==
                                  "receiver"
                              ? BubbleNip.leftBottom
                              : BubbleNip.no,
                          color: chatController.messages[index].messageType ==
                                  "receiver"
                              ? const Color.fromARGB(255, 239, 247, 255)
                              : colorblue,
                          child: SizedBox(
                            width: width * 0.6,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Text(chatController
                                      .messages[index].messageContent),
                                ),
                                Text(
                                  DateFormat('hh:mm a')
                                      .format(chatController.times)
                                      .toString(),
                                  style: const TextStyle(
                                    fontSize: 8,
                                    color: Color.fromARGB(255, 221, 218, 218),
                                  ),
                                ),
                                Icon(
                                  chatController.messages[index].isRead == false
                                      ? null
                                      : Icons.done_all,
                                  color: colorblack,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const CircleChatFloatingButtonWidget(),
      bottomNavigationBar:
          CircleChatBottonNavWidget(height: height, width: width),
    );
  }
}
