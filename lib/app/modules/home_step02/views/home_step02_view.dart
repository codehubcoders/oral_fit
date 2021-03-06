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
                                '???????????? ??????',
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
                            '????????????',
                            style: TextStyle(
                                fontSize: 16,
                                color: greyDarkColor6,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 10),
                          Step02Select01(),
                          SizedBox(height: 20),
                          Text(
                            '???????????? ?????? ??????',
                            style: TextStyle(
                                fontSize: 16,
                                color: greyDarkColor6,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 10),
                          Step02Select02(),
                          SizedBox(height: 20),
                          Text(
                            '???????????? ??????',
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
                          '?????? ??????',
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
                                '?????? ????????? ????????????, ?????? ?????? ????????? ???????????? ???????????? ?????? ??????????????????.',
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
                                  text: '????????????',
                                  style: TextStyle(
                                      color: primaryFontColor2,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  children: <TextSpan>[
                                  TextSpan(
                                      text: ' 0',
                                      style:
                                          TextStyle(color: Color(0xFFFEB937))),
                                  TextSpan(text: '???'),
                                ]))
                          : Text('????????????',
                              style: TextStyle(
                                  color: primaryFontColor2,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                      SizedBox(height: 10),
                      _.saveResultButton.value
                          ? Center(
                              child: Text(
                                '?????? ????????? ??????????????????.\n??????????????? ??????????????? ????????????????????? ???????????????.',
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
                            title: '??????',
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
                            title: '??????  >',
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
                '?????? ??????',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: greyDarkColor5),
              ),
              SizedBox(height: 20),
              Text(
                '?????? ????????? ????????????\n???????????? ???????????? ?????? ??????????????????.',
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
