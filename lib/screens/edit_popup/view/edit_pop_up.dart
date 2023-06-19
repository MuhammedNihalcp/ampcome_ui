import 'package:ampcome_projuect/screens/edit_popup/view/widget/edit_head_widget.dart';
import 'package:ampcome_projuect/screens/edit_popup/view/widget/user_list_and_task_details.dart';
import 'package:ampcome_projuect/screens/edit_popup/view/widget/user_message_and_chat_widget.dart';
import 'package:ampcome_projuect/screens/edit_popup/view/widget/user_text_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/colors.dart';
import '../../../core/style.dart';

class EditPopUp {
  double height = Get.height;
  double width = Get.width;
  Future<dynamic> editshowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(backgroundColor: Colors.transparent, children: [
          Container(
            height: height * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: splashbckcolor,
            ),
            child: Column(
              children: [
                EditHeadWidget(width: width, height: height),
                const UserTextAndImageWidget(),
                kheight20,
                UserMessageAndChatDetails(width: width, height: height),
                kheight20,
                UserListAndTaskDetails(width: width, height: height),
                kheight20,
                const Image(
                  image: AssetImage('assets/images/editphoneimge.png'),
                )
              ],
            ),
          ),
        ]);
      },
    );
  }
}
