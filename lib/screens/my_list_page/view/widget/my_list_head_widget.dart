import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class MyListHeadWidget extends StatelessWidget {
  const MyListHeadWidget({
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
                    onPressed: () {},
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
                'My List',
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
                  Flexible(child: CupertinoSearchTextField()),
                  kwidth10,
                  Image(image: AssetImage('assets/images/task_icon.png'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
