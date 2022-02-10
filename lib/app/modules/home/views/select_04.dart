import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/theme_data.dart';
import '../controllers/home_controller.dart';

class Selecte04 extends GetView {
  final _ = Get.find<HomeController>();

  Widget customRadioButton(String text, int index) {
    return Obx(() => GestureDetector(
          onTap: () {
            _.genderValue.value = index;
          },
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  color: (_.genderValue.value == index)
                      ? primaryLiteColor
                      : whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  text,
                  style: TextStyle(
                      color: (_.genderValue.value == index)
                          ? primaryColor
                          : greySubLiteColor9,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final isTouching = false.obs;
    return Listener(
      onPointerDown: (event) => {isTouching.value = true},
      onPointerUp: (event) => {isTouching.value = false},
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: Get.height / 10,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: greyLiteColorD)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '환자명',
              style: TextStyle(fontSize: 12, color: greySubDarkColor7),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: TextField(
                  controller: _.userNameCtl,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: '입력',
                    hintStyle:
                        TextStyle(fontSize: 16, color: greySubLiteColor9),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                )),
                Row(
                  children: [
                    customRadioButton("남자", 1),
                    SizedBox(width: 5),
                    customRadioButton("여자", 2),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
