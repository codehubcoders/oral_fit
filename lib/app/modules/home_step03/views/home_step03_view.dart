import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/global_widget/custom_button.dart';
import 'package:oral_fit/app/modules/home_step03/views/dropdown.dart';
import 'package:oral_fit/app/modules/home_step03/views/radio_button_img.dart';

import '../controllers/home_step03_controller.dart';

class HomeStep03View extends GetView<HomeStep03Controller> {
  final _ = Get.find<HomeStep03Controller>();
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
              SizedBox(height: 20),
              Text(
                '구강 스캔 이미지',
                style: TextStyle(
                    fontSize: 16,
                    color: greyDarkColor6,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10),
              RadioButtonScan(),
              SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: '기타 전달사항 ',
                  style: TextStyle(
                      fontSize: 16,
                      color: greyDarkColor6,
                      fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: ' (선택입력사항)',
                  style: TextStyle(fontSize: 16, color: greySubLiteColor9),
                )
              ])),
              SizedBox(height: 10),
              Container(
                height: 195,
                child: TextField(
                  controller: _.otherInput,
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.top,
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                    isDense: true,
                    hintStyle:
                        TextStyle(color: greySubLiteColor9, fontSize: 14),
                    hintText: '입력',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(width: 1, color: greyLiteColorD),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(width: 1, color: greyLiteColorD),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  keyboardType: TextInputType.multiline,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: Obx(() => Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: primaryColor,
                        value: _.checkCall.value,
                        onChanged: (value) {
                          _.checkCall.value = !_.checkCall.value;
                        })),
                  ),
                  Text('전화통화 요망',
                      style: TextStyle(
                        fontSize: 16,
                      ))
                ],
              ),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.2,
                    child: Obx(() => Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: primaryColor,
                        value: _.checkDesign.value,
                        onChanged: (value) {
                          _.checkDesign.value = !_.checkDesign.value;
                        })),
                  ),
                  Text('디자인 컨펌요청',
                      style: TextStyle(
                        fontSize: 16,
                      ))
                ],
              ),
              SizedBox(height: 20),
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
                    title: '완료',
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
