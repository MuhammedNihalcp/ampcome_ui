import 'package:ampcome_projuect/screens/backdrop/view/widget/add_user_name_widget.dart';
import 'package:ampcome_projuect/screens/backdrop/view/widget/assigness_text_widget.dart';
import 'package:ampcome_projuect/screens/backdrop/view/widget/description_widget.dart';
import 'package:ampcome_projuect/screens/backdrop/view/widget/head_widget.dart';
import 'package:ampcome_projuect/screens/backdrop/view/widget/high_widget.dart';
import 'package:ampcome_projuect/screens/backdrop/view/widget/responsible_text_widget.dart';
import 'package:ampcome_projuect/screens/backdrop/view/widget/save_text_widget.dart';
import 'package:ampcome_projuect/screens/backdrop/view/widget/tag_widget.dart';
import 'package:ampcome_projuect/screens/backdrop/view/widget/todo_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../core/colors.dart';
import '../../../core/style.dart';

class BackDrop {
  double height = Get.height;
  double width = Get.width;
  Future<dynamic> createCardBottomSheet(
    BuildContext context,
  ) {
    return showMaterialModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return SizedBox(
          height: height * 0.92,
          child: SingleChildScrollView(
            child: Column(
              children: [
                kheight10,
                const Image(
                  image: AssetImage('assets/images/addlistindicator.png'),
                ),
                kheight20,
                HeadWidget(width: width),
                kheight20,
                AddUserNameWidget(
                  width: width,
                ),
                TagWidget(width: width, height: height),
                DescriptionWidget(
                  width: width,
                ),
                kheight10,
                ResponsibleTextWidget(width: width),
                kheight10,
                AssignessTextWidget(width: width),
                kheight10,
                ToDoWidget(width: width),
                kheight20,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.attach_file),
                      SizedBox(
                        width: width * 0.1,
                      ),
                      const Flexible(
                        child: Text(
                          'Attachemets ( Ooptional)',
                        ),
                      )
                    ],
                  ),
                ),
                kheight20,
                HighWidget(width: width),
                kheight20,
                SaveTextWidget(width: width),
                kheight20,
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(splashbckcolor),
                    fixedSize: MaterialStateProperty.all(
                      Size(width * 0.9, height * 0.06),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        side: const BorderSide(color: splashbckcolor, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Create',
                      ),
                      kwidth20,
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
