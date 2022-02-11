import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import '../controllers/home_controller.dart';

class Selecte05 extends GetView {
  final isTouching = false.obs;
  final _ = Get.find<HomeController>();

  Widget customRadioButton(String text, int index) {
    return Obx(() => GestureDetector(
          onTap: () {
            _.timeValue.value = index;
          },
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  color: (_.timeValue.value == index)
                      ? primaryLiteColor
                      : whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  text,
                  style: TextStyle(
                      color: (_.timeValue.value == index)
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
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: Get.height / 10,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: greyLiteColorD)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '완성일',
            style: TextStyle(fontSize: 12, color: greySubDarkColor7),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Obx(() => GestureDetector(
                  onTap: () {
                    Future<DateTime?> selectedDate = showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2100));

                    selectedDate.then((dateTime) {
                      _.selectedDate.value = DateFormat('yyyy/MM/dd')
                          .format(dateTime as DateTime)
                          .toString();
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 5, right: 10),
                    child: _.selectedDate.value == ''
                        ? Text(
                            '날짜선택',
                            style: TextStyle(
                                fontSize: 16, color: greySubLiteColor9),
                          )
                        : Text(_.selectedDate.value),
                  ))),
              Row(
                children: [
                  customRadioButton("오전", 1),
                  SizedBox(width: 5),
                  customRadioButton("오후", 2),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
