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
  final _ = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<HomeController>(() => HomeController());
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
              Text(
                '의뢰서유형',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Selecte01(),
              SizedBox(height: 20),
              Text(
                '기공소명',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Step01Dropdown(),
              SizedBox(height: 20),
              Text(
                '임프레션 유형',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff666666),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              Selecte03(),
              SizedBox(height: 30),
              Text(
                '주문정보',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff666666),
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
                    buttonColor: Color(0xFFF8F8F8),
                    fontsize: 16,
                    fontWeight: FontWeight.w400,
                    onTap: () {},
                    size: Size(Get.width * 0.3, 54),
                    textColor: greySubLiteColor9,
                    title: '취소',
                  ),
                  CustomButton(
                    buttonColor: primaryColor,
                    fontsize: 16,
                    fontWeight: FontWeight.w400,
                    onTap: _.nextStep02,
                    size: Size(Get.width * 0.6, 54),
                    textColor: whiteColor,
                    title: '다음  >',
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
