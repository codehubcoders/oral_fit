import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import '../../../global_widget/selected_card.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 62,
        backgroundColor: primaryDarkColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              logoImage,
              width: 112,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.access_time, size: 25)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings_outlined, size: 25)),
              ],
            ),
          ],
        ),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'STEP 01',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                    ),
                    Text(
                      '/02',
                      style: TextStyle(color: greyLiteColorD, fontSize: 24),
                    ),
                  ],
                ),
                Text(
                  '기본정보',
                  style: TextStyle(fontSize: 18, color: greyDarkColor5),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                lineContainer(size: 3, color: primaryColor),
                lineContainer(size: 2, color: greyLiteColorD),
                lineContainer(size: 2, color: greyLiteColorD)
              ],
            ),
            SelectedCard(),
          ],
        ),
      )),
    );
  }
}

lineContainer({double? size, Color? color}) {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 20),
    width: Get.width * 0.30,
    height: size,
    color: color,
  );
}
