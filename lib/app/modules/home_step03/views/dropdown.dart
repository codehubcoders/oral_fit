import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/theme_data.dart';
import '../controllers/home_step03_controller.dart';

class Step03Dropdown extends GetView {
  final _ = Get.find<HomeStep03Controller>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 40,
          width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: greyLiteColorD)),
          child: Obx(() => DropdownButtonHideUnderline(
                  child: DropdownButton(
                onChanged: _.dropdownOn01,
                value: _.dropdownValue01.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: greySubLiteColor9,
                ),
                items: _.dropdownList01.map((selectedType) {
                  return DropdownMenuItem(
                    child: Text(
                      selectedType,
                      style: TextStyle(fontSize: 14),
                    ),
                    value: selectedType,
                  );
                }).toList(),
              ))),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 40,
          width: Get.width,
          decoration: BoxDecoration(
              color: Color(0xFFF9F9F9),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: greyLiteColorD)),
          child: Obx(() => DropdownButtonHideUnderline(
                  child: DropdownButton(
                onChanged: _.dropdownOn02,
                value: _.dropdownValue02.value,
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: greySubLiteColor9,
                ),
                items: _.dropdownList02.map((selectedType) {
                  return DropdownMenuItem(
                    child: Text(
                      selectedType,
                      style: TextStyle(fontSize: 14),
                    ),
                    value: selectedType,
                  );
                }).toList(),
              ))),
        ),
      ],
    );
  }
}
