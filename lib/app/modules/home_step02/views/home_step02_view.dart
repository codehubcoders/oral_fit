import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/global_widget/custom_button.dart';
import 'package:oral_fit/app/modules/home_step02/views/result_container.dart';
import 'package:oral_fit/app/modules/home_step02/views/select_01.dart';
import 'package:oral_fit/app/modules/home_step02/views/select_02.dart';
import 'package:oral_fit/app/modules/home_step02/views/select_03.dart';

import '../../../core/theme/theme_data.dart';
import '../controllers/home_step02_controller.dart';

class HomeStep02View extends GetView<HomeStep02Controller> {
  @override
  Widget build(BuildContext context) {
    final _ = Get.find<HomeStep02Controller>();
    return GetX<HomeStep02Controller>(
      builder: (_) {
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
              child: Column(children: [
                Container(
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
                                    'STEP 02',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24),
                                  ),
                                  Text(
                                    '/03',
                                    style: TextStyle(
                                        color: greyLiteColorD, fontSize: 24),
                                  ),
                                ],
                              ),
                              Text(
                                '임플란트 선택',
                                style: TextStyle(
                                    fontSize: 18, color: greyDarkColor5),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              lineContainer(size: 2, color: greyLiteColorD),
                              lineContainer(size: 3, color: primaryColor),
                              lineContainer(size: 2, color: greyLiteColorD)
                            ],
                          ),
                          Text(
                            '주문종류',
                            style: TextStyle(
                                fontSize: 16,
                                color: greyDarkColor6,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 10),
                          Step02Select01(),
                          SizedBox(height: 20),
                          Text(
                            '임플란트 연결 상태',
                            style: TextStyle(
                                fontSize: 16,
                                color: greyDarkColor6,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 10),
                          Step02Select02(),
                          SizedBox(height: 20),
                          Text(
                            '크라운의 종류',
                            style: TextStyle(
                                fontSize: 16,
                                color: greyDarkColor6,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 10),
                          Step02Select03(),
                          SizedBox(height: 20),
                        ])),
                Container(
                  color: Color(0xFFF9F9F9),
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  width: Get.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '선택 결과',
                          style: TextStyle(
                              fontSize: 16,
                              color: greyDarkColor6,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 10),
                        _.saveResultButton.value
                            ? ResultContainer()
                            : saveMoreBox(),
                        SizedBox(height: 15),
                        _.saveResultButton.value
                            ? Text(
                                '추가 선택을 원하시면, 먼저 선택 결과를 저장하고 처음부터 다시 진행해주세요.',
                                style: TextStyle(
                                    fontSize: 12, color: greyDarkColor6),
                              )
                            : Container(),
                      ]),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _.saveResultButton.value
                          ? RichText(
                              text: TextSpan(
                                  text: '저장목록',
                                  style: TextStyle(
                                      color: primaryFontColor2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  children: <TextSpan>[
                                  TextSpan(
                                      text: ' 0',
                                      style:
                                          TextStyle(color: Color(0xFFFEB937))),
                                  TextSpan(text: '건'),
                                ]))
                          : Text('저장목록',
                              style: TextStyle(
                                  color: primaryFontColor2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                      SizedBox(height: 10),
                      _.saveResultButton.value
                          ? Center(
                              child: Text(
                                '저장 목록이 비어있습니다.\n선택결과를 확인하시고 ‘선택저장’을 눌러주세요.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, color: greyDarkColor6),
                              ),
                            )
                          : Container(
                              alignment: Alignment.centerLeft,
                              child: ResultContainer(),
                            ),
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
                              Get.toNamed('/navigationbar');
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
                    ],
                  ),
                ),
              ]),
            ),
          ),
        );
      },
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

saveMoreBox() {
  return Center(
      child: Container(
          padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Column(
            children: [
              Text(
                '저장 완료',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: greyDarkColor5),
              ),
              SizedBox(height: 20),
              Text(
                '추가 주문을 원하시면\n상단으로 이동하여 다시 진행해주세요.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: greyDarkColor6),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/images/arrowTop.png',
                  width: 60,
                ),
              ),
            ],
          )));
}
