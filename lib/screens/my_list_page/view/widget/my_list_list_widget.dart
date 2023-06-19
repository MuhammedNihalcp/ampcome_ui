import 'package:flutter/material.dart';

import '../../../../core/colors.dart';
import '../../../../core/style.dart';

class MyListListWidget extends StatelessWidget {
  const MyListListWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return index == 0
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage('assets/images/8_dots.png'),
                    ),
                    kwidth5,
                    Flexible(
                      child: Container(
                        width: double.infinity,
                        height: height * 0.3,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(stops: [
                            0.01,
                            0.01
                          ], colors: [
                            colorblack,
                            colorWhite,
                          ]),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                // crossAxisAlignment:
                                //     CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    'Mohammed Nasser',
                                    style: listtextstyle2,
                                  ),
                                  const Text(
                                    '5 Days ago',
                                    style: listtextstyle3,
                                  ),
                                  SizedBox(
                                    width: width * 0.1,
                                  ),
                                  const Image(
                                    image:
                                        AssetImage('assets/images/yaicon.png'),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.notifications_none_rounded,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                        'assets/images/listavatar.png'),
                                  ),
                                  kwidth5,
                                  TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        colorblue,
                                      ),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(
                                          width * 0.05,
                                          height * 0.03,
                                        ),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: colorblue, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      '+Add Tag',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Image(
                                    image: AssetImage(
                                        'assets/images/listindicator.png'),
                                  )
                                ],
                              ),
                              kheight10,
                              Row(
                                children: const [
                                  Text('To Do'),
                                ],
                              ),
                              kheight10,
                              Row(
                                children: const [
                                  kwidth20,
                                  Icon(
                                    Icons.circle_outlined,
                                    size: 11,
                                  ),
                                  kwidth5,
                                  Text(
                                    'Call Radiology to book US',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  kwidth20,
                                  Icon(
                                    Icons.circle,
                                    size: 11,
                                  ),
                                  kwidth5,
                                  Text(
                                    'Call Radiology to book US',
                                    style: TextStyle(
                                      color: colorgrey,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  kwidth20,
                                  Icon(
                                    Icons.circle,
                                    size: 11,
                                  ),
                                  kwidth5,
                                  Text(
                                    'Call Radiology to book US',
                                    style: TextStyle(
                                      color: colorgrey,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  kwidth20,
                                  Icon(
                                    Icons.circle_outlined,
                                    size: 11,
                                  ),
                                  kwidth5,
                                  Text(
                                    'Call Radiology to book US',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Image(
                                    image: AssetImage(
                                        'assets/images/Indicator.png'),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/8_dots.png'),
                    ),
                    kwidth5,
                    Flexible(
                      child: Container(
                        width: double.infinity,
                        height: height * 0.13,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              stops: [0.01, 0.01],
                              colors: [colorblack, colorWhite]),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'John Doe',
                                    style: listtextstyle2,
                                  ),
                                  const Text(
                                    '5 Days ago',
                                    style: listtextstyle3,
                                  ),
                                  SizedBox(
                                    width: width * 0.3,
                                  ),
                                  const Image(
                                    image: AssetImage(
                                      'assets/images/list3avatar.png',
                                    ),
                                  ),
                                  const Spacer(),
                                  const Image(
                                    image: AssetImage(
                                        'assets/images/listnotificationicon.png'),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                        'assets/images/listavatar.png'),
                                  ),
                                  kwidth5,
                                  TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        colorblue,
                                      ),
                                      fixedSize: MaterialStateProperty.all(
                                        Size(
                                          width * 0.05,
                                          height * 0.0,
                                        ),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: colorblue, width: 0),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      '+Add Tag',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color: colorWhite,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  const Image(
                                    image: AssetImage(
                                      'assets/images/Listindicator2.png',
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: 10,
    );
  }
}
