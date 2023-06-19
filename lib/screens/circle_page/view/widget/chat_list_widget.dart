import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;
import '../../../../core/colors.dart';
import '../../../../core/style.dart';
import '../../../screen_chat/view/screen_chat.dart';
import '../../controller/circle_controller.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({
    super.key,
    required this.circleContoller,
  });

  final CircleContoller circleContoller;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Get.to(() => ScreenChat());
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
                      Text(
                        circleContoller.personName[index],
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      kheight5,
                      Row(
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
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  index == 0
                      ? IconButton(
                          onPressed: () {},
                          icon: const Image(
                            width: 15,
                            image: AssetImage(
                              'assets/images/pin_icon.png',
                            ),
                          ),
                        )
                      : const SizedBox(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '12:00 PM',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: colorgrey, fontSize: 10),
                      ),
                      index == 0
                          ? const badges.Badge(
                              badgeContent: Text(
                                '3',
                                style: TextStyle(
                                  color: colorWhite,
                                ),
                              ),
                              badgeStyle: badges.BadgeStyle(
                                badgeColor: colorbudge,
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
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
