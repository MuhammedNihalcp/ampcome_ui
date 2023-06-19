import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/colors.dart';
import '../../../../core/style.dart';
import '../../../edit_popup/view/edit_pop_up.dart';

class CircleHeadWidget extends StatelessWidget {
  const CircleHeadWidget({
    super.key,
    required this.height,
  });

  final double height;

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
        height: height * 0.25,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      EditPopUp().editshowDialog(context);
                    },
                    child: const Text(
                      'Edit',
                      style: TextStyle(
                        color: colorblack,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_outline,
                      color: colorblack,
                      size: 28,
                    ),
                  ),
                  badges.Badge(
                    position: badges.BadgePosition.topEnd(top: 5, end: 5),
                    badgeContent: const Text('4'),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none,
                        color: colorblack,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
              kheight20,
              Text(
                'Circles',
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kheight20,
              Row(
                children: const [
                  Image(
                    image: AssetImage('assets/images/Oval.png'),
                  ),
                  kwidth5,
                  Flexible(
                    child: CupertinoSearchTextField(
                      placeholder: 'Search for chats & messages',
                      placeholderStyle:
                          TextStyle(fontSize: 15, color: colorgrey),
                      backgroundColor: Color.fromARGB(255, 248, 248, 248),
                    ),
                  ),
                  kwidth10,
                  Icon(
                    Icons.filter_list_rounded,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
