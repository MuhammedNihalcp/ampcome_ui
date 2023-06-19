import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';
import '../../../circle_page/controller/circle_controller.dart';
import '../../../screen_chat_2/view/chat_view_2.dart';

class MessageListWidget extends StatelessWidget {
  const MessageListWidget({
    super.key,
    required this.circleContoller,
    required this.width,
  });

  final CircleContoller circleContoller;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.to(() => ScreenChat2());
          },
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        AssetImage(circleContoller.personImages[index]),
                  ),
                  kwidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.79,
                        height: 20,
                        child: Row(
                          children: [
                            Text(
                              circleContoller.personName[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text(
                                  '11/19/19',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(color: colorgrey, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      kheight5,
                      SizedBox(
                        width: width * 0.79,
                        height: 30,
                        child: Row(
                          children: [
                            Icon(
                              Icons.done_all_rounded,
                              size: 17,
                              color: index == 1 || index == 2 || index == 4
                                  ? colorbudge
                                  : colorblack,
                            ),
                            kwidth5,
                            Text(
                              index == 0
                                  ? 'Zyad: Hello Guys'
                                  : 'You: Is there a morning meeting today?',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: colorgrey),
                            ),
                            const Spacer(),
                            index == 0
                                ? IconButton(
                                    onPressed: () {},
                                    icon: const Image(
                                      width: 13,
                                      image: AssetImage(
                                        'assets/images/pin_icon.png',
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          thickness: 0.9,
        );
      },
      itemCount: circleContoller.personImages.length,
    );
  }
}
