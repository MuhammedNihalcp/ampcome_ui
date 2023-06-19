import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../../core/colors.dart';
import '../../../backdrop/view/backdrop_view.dart';
import '../../../task_pop_up/view/task_pop_up_view.dart';

class BottonNavFloatingButtonWidget extends StatelessWidget {
  const BottonNavFloatingButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      backgroundColor: splashbckcolor,
      activeBackgroundColor: colorpink,
      childrenButtonSize: const Size.square(70),
      animatedIcon: AnimatedIcons.add_event,
      curve: Curves.fastOutSlowIn,
      gradientBoxShape: BoxShape.circle,
      // animationAngle:{pi / 10} ,
      direction: SpeedDialDirection.up,
      useRotationAnimation: false,
      children: [
        SpeedDialChild(
          backgroundColor: splashbckcolor,
          onTap: () {
            TaskPopUp().showTaskDialog(context);
          },
          child: const Image(
            width: 70,
            color: colorWhite,
            image: AssetImage('assets/images/Vector.png'),
          ),
        ),
        SpeedDialChild(
          backgroundColor: splashbckcolor,
          onTap: () {
            BackDrop().createCardBottomSheet(
              context,
            );
          },
          child: const Image(
            width: 70,
            color: colorWhite,
            image: AssetImage('assets/images/List.png'),
          ),
        ),
      ],
    );
  }
}
