import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:badges/badges.dart' as badges;
import '../../../../core/colors.dart';
import '../../controller/bottom_controller.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
    required this.bottomNavController,
  });

  final BottomNavController bottomNavController;

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.indicator,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.all(10),
      snakeViewColor: colorWhite,
      elevation: 5,
      selectedItemColor: colorblue,
      unselectedItemColor: colorblack,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      currentIndex: bottomNavController.currentIndex,
      onTap: (index) {
        bottomNavController.chageIndex(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Image(
            color:
                bottomNavController.currentIndex == 0 ? colorblue : colorblack,
            width: 30,
            image: const AssetImage('assets/images/Circles_bottom.png'),
          ),
          label: 'circle',
        ),
        BottomNavigationBarItem(
          icon: badges.Badge(
            position: badges.BadgePosition.topEnd(top: -13, end: 4),
            badgeContent: const Text('3'),
            child: Image(
              color: bottomNavController.currentIndex == 1
                  ? colorblue
                  : colorblack,
              image: const AssetImage('assets/images/message.png'),
            ),
          ),
          label: 'message',
        ),
        BottomNavigationBarItem(
          icon: Image(
            color:
                bottomNavController.currentIndex == 2 ? colorblue : colorblack,
            image: const AssetImage('assets/images/Vector.png'),
          ),
          label: 'My Task',
        ),
        BottomNavigationBarItem(
          icon: Image(
            color:
                bottomNavController.currentIndex == 3 ? colorblue : colorblack,
            image: const AssetImage('assets/images/List.png'),
          ),
          label: 'My List',
        ),
      ],
    );
  }
}
