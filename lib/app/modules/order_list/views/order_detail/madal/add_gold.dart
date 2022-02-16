import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/theme/theme_data.dart';
import '../../../../../global_widget/custom_button.dart';
import '../../../controllers/order_list_controller.dart';

void addGoldModal() {
  Get.defaultDialog(
      radius: 8,
      contentPadding: EdgeInsets.zero,
      title: '',
      titlePadding: EdgeInsets.zero,
      titleStyle: TextStyle(fontSize: 0),
      content: Container(
          padding: EdgeInsets.fromLTRB(15, 20, 20, 10),
          width: Get.width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('골드 등록',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                SizedBox(height: 20),
                inputBox('사용량'),
                SizedBox(height: 5),
                inputBox('소모량'),
                SizedBox(height: 5),
                inputBox('총사용량'),
                SizedBox(height: 5),
                Row(children: [
                  Container(
                    width: Get.width * 0.2,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Gold 소유',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Row(
                    children: [
                      getGold('치과', 1),
                      SizedBox(width: Get.width * 0.035),
                      getGold('기공소', 2),
                    ],
                  )
                ]),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      borderSide: BorderSide(color: greyLiteColorD),
                      buttonColor: whiteColor,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                      onTap: () {},
                      size: Size(Get.width * 0.2, 41),
                      textColor: greyDarkColor3,
                      title: '수정',
                    ),
                    SizedBox(width: 10),
                    CustomButton(
                      borderSide: BorderSide.none,
                      buttonColor: primaryColor,
                      fontsize: 14,
                      fontWeight: FontWeight.w700,
                      onTap: () {
                        Get.back();
                      },
                      size: Size(Get.width * 0.2, 41),
                      textColor: whiteColor,
                      title: '등록',
                    ),
                  ],
                ),
              ])));
}

inputBox(String title) {
  return Row(children: [
    Container(
      width: Get.width * 0.2,
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
      ),
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          width: Get.width * 0.5,
          height: 36,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: greyLiteColorD)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 26,
                height: 36,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: greyLiteColorD,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Text(
                  'g',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ]);
}

getGold(String text, int index) {
  final _ = Get.find<OrderListController>();

  return Obx(() => GestureDetector(
        onTap: () {
          _.getGold.value = index;
        },
        child: Container(
          alignment: Alignment.center,
          width: Get.width * 0.23,
          height: 40,
          decoration: BoxDecoration(
              color: (_.getGold.value == index) ? primaryLiteColor : whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color:
                    (_.getGold.value == index) ? primaryColor : greyLiteColorD,
              )),
          child: Text(
            text,
            style: TextStyle(
                color: (_.getGold.value == index)
                    ? primaryColor
                    : greySubLiteColor9,
                fontSize: 14),
          ),
        ),
      ));
}
