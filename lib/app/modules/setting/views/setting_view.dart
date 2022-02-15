import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/global_widget/custom_button.dart';

import '../../../core/theme/theme_data.dart';
import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  final _ = Get.find<SettingController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2E8EB),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios, color: greyLiteColorD)),
        backgroundColor: primaryDarkColor,
        elevation: 0,
        toolbarHeight: 62,
        title: Text(
          '설정',
          style: TextStyle(
              fontSize: 18, color: greyLiteColorD, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: Get.width,
                color: whiteColor,
                padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '로그인 정보',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: Get.width * 0.15,
                          child: Text(
                            '업체명',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          '온누리치과',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: Get.width * 0.15,
                          child: Text(
                            '아이디',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          'onury',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: Get.width * 0.15,
                          child: Text(
                            '이름',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          '김범수',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                color: whiteColor,
                padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '설정',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Get.width * 0.15,
                          child: Text(
                            '알람설정',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Obx(() => Switch(
                            activeColor: primaryColor,
                            value: _.icChecked.value,
                            onChanged: (value) {
                              _.icChecked.value = value;
                            })),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: Get.width,
                color: whiteColor,
                padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '버전 정보',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '오랄핏 ver.1',
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          '2022.01.21',
                          style: TextStyle(
                              fontSize: 14,
                              color: greySubLiteColor9,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                      borderSide: BorderSide(color: greyLiteColorD),
                      buttonColor: whiteColor,
                      fontsize: 16,
                      fontWeight: FontWeight.w700,
                      onTap: () {},
                      size: Size(Get.width, 43),
                      textColor: greyDarkColor3,
                      title: '업데이트',
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '로그아웃',
                    style: TextStyle(
                        fontSize: 14,
                        color: greySubLiteColor9,
                        fontWeight: FontWeight.w700),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
