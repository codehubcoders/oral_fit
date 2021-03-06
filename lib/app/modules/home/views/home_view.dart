import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/modules/home/views/select_01.dart';
import 'package:oral_fit/app/modules/home/views/select_02.dart';
import 'package:oral_fit/app/modules/home/views/select_03.dart';
import 'package:oral_fit/app/modules/home/views/select_04.dart';
import 'package:oral_fit/app/modules/home/views/select_05.dart';
import 'package:oral_fit/app/modules/home/views/select_06.dart';
import 'package:oral_fit/app/modules/home/views/select_07.dart';

import '../../../global_widget/custom_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    final _ = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: whiteColor,
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
                    onPressed: () {
                      Get.toNamed('/pick-up-reservation');
                    },
                    icon: Icon(Icons.access_time, size: 25)),
                IconButton(
                    onPressed: () {
                      Get.toNamed('/setting');
                    },
                    icon: Icon(Icons.settings_outlined, size: 25)),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      Text(
                        '/03',
                        style: TextStyle(color: greyLiteColorD, fontSize: 24),
                      ),
                    ],
                  ),
                  Text(
                    '????????????',
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
              Text(
                '???????????????',
                style: TextStyle(
                    fontSize: 16,
                    color: greyDarkColor6,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Selecte01(),
              SizedBox(height: 20),
              Text(
                '????????????',
                style: TextStyle(
                    fontSize: 16,
                    color: greyDarkColor6,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Step01Dropdown(),
              SizedBox(height: 20),
              Text(
                '???????????? ??????',
                style: TextStyle(
                    fontSize: 16,
                    color: greyDarkColor6,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Selecte03(),
              SizedBox(height: 30),
              Text(
                '????????????',
                style: TextStyle(
                    fontSize: 16,
                    color: greyDarkColor6,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Selecte04(),
              SizedBox(height: 10),
              Selecte05(),
              SizedBox(height: 10),
              Step06Dropdown(),
              SizedBox(height: 10),
              Step07Dropdown(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    borderSide: BorderSide.none,
                    buttonColor: Color(0xFFF8F8F8),
                    fontsize: 16,
                    fontWeight: FontWeight.w400,
                    onTap: () {},
                    size: Size(Get.width * 0.3, 54),
                    textColor: greySubLiteColor9,
                    title: '??????',
                  ),
                  CustomButton(
                    borderSide: BorderSide.none,
                    buttonColor: primaryColor,
                    fontsize: 16,
                    fontWeight: FontWeight.w400,
                    onTap: _.nextStep02,
                    size: Size(Get.width * 0.6, 54),
                    textColor: whiteColor,
                    title: '??????  >',
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
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
