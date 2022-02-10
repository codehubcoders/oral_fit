import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import '../controllers/home_controller.dart';

class Step06Dropdown extends GetView {
  final _ = Get.find<HomeController>();
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '담당의사',
            style: TextStyle(fontSize: 12, color: greySubDarkColor7),
          ),
          Obx(() => DropdownButtonHideUnderline(
                  child: DropdownButton(
                onChanged: _.selectedDoctor,
                value: _.selectDoctor.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: greySubLiteColor9,
                ),
                items: _.doctorList.map((selectedType) {
                  return DropdownMenuItem(
                    child: Text(
                      selectedType,
                      style: TextStyle(fontSize: 16),
                    ),
                    value: selectedType,
                  );
                }).toList(),
              ))),
        ],
      ),
    );
  }
}
