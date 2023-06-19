import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/style.dart';
import '../../controller/my_task_controller.dart';

class MyTaskTabBarViewWidget extends StatelessWidget {
  const MyTaskTabBarViewWidget({
    super.key,
    required this.myTaskController,
    required this.height,
  });

  final MyTaskController myTaskController;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: myTaskController,
      builder: (context) {
        return SizedBox(
          height: height,
          child:
              TabBarView(controller: myTaskController.tabController, children: [
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/8_dots.png'),
                      ),
                      kwidth5,
                      Flexible(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              // color: colorblue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              title: Text(
                                'Ground Round begins at 2pm',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
                                style: TextStyle(fontSize: 12),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Image(
                                image: AssetImage(
                                    'assets/images/mytaskimages.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: 10,
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/8_dots.png'),
                      ),
                      kwidth5,
                      Flexible(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              // color: colorblue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              title: Text(
                                'Ground Round begins at 2pm',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
                                style: TextStyle(fontSize: 12),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Image(
                                image: AssetImage(
                                    'assets/images/mytaskimages.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: 10,
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/8_dots.png'),
                      ),
                      kwidth5,
                      Flexible(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              // color: colorblue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              title: Text(
                                'Ground Round begins at 2pm',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
                                style: TextStyle(fontSize: 12),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Image(
                                image: AssetImage(
                                    'assets/images/mytaskimages.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: 10,
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/8_dots.png'),
                      ),
                      kwidth5,
                      Flexible(
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                              // color: colorblue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const ListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              title: Text(
                                'Ground Round begins at 2pm',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                'You can write about the basic rules of the group, sharing the contents like pictures, documents, videos etc.',
                                style: TextStyle(fontSize: 12),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Image(
                                image: AssetImage(
                                    'assets/images/mytaskimages.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox();
              },
              itemCount: 10,
            ),
          ]),
        );
      },
    );
  }
}
