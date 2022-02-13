import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/global_widget/custom_button.dart';
import 'package:oral_fit/app/modules/home_step03/views/dropdown.dart';
import 'package:oral_fit/app/modules/home_step03/views/radio_button_img.dart';

import '../controllers/home_step03_controller.dart';

class HomeStep03View extends GetView<HomeStep03Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                      onPressed: () {},
                      icon: Icon(Icons.access_time, size: 25)),
                  IconButton(
                      onPressed: () {},
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'STEP 03',
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
                    '쉐이드 / 파일첨부',
                    style: TextStyle(fontSize: 18, color: greyDarkColor5),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  lineContainer(size: 2, color: greyLiteColorD),
                  lineContainer(size: 2, color: greyLiteColorD),
                  lineContainer(size: 3, color: primaryColor)
                ],
              ),
              Text(
                '쉐이드 종류',
                style: TextStyle(
                    fontSize: 16,
                    color: greyDarkColor6,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Step03Dropdown(),
              SizedBox(height: 20),
              Text(
                '쉐이드 이미지',
                style: TextStyle(
                    fontSize: 16,
                    color: greyDarkColor6,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              RadioButtonImg(),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    borderSide: BorderSide.none,
                    buttonColor: Color(0xFFF8F8F8),
                    fontsize: 16,
                    fontWeight: FontWeight.w400,
                    onTap: () {
                      Get.toNamed('/home-step02');
                    },
                    size: Size(Get.width * 0.3, 54),
                    textColor: greySubLiteColor9,
                    title: '이전',
                  ),
                  CustomButton(
                    borderSide: BorderSide.none,
                    buttonColor: primaryColor,
                    fontsize: 16,
                    fontWeight: FontWeight.w400,
                    onTap: () {
                      Get.toNamed('/home-step03');
                    },
                    size: Size(Get.width * 0.6, 54),
                    textColor: whiteColor,
                    title: '다음  >',
                  ),
                ],
              ),
            ]),
          ),
        )));
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
