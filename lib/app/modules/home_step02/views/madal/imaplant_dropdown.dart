import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/theme_data.dart';

class ImplantCrownDropDown extends GetView {
  final String dropdwonValue;
  final List dropdwonList;
  final Function onChanged;

  ImplantCrownDropDown(
      {required this.dropdwonValue,
      required this.dropdwonList,
      required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 43,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: greyLiteColorD)),
        child: Obx(() => DropdownButtonHideUnderline(
                child: DropdownButton(
              onChanged: (value) => onChanged,
              value: dropdwonValue,
              icon: Icon(
                Icons.keyboard_arrow_down,
                size: 30,
                color: greySubLiteColor9,
              ),
              items: dropdwonList.map((selectedType) {
                return DropdownMenuItem(
                  child: Text(
                    selectedType,
                    style: TextStyle(fontSize: 14),
                  ),
                  value: selectedType,
                );
              }).toList(),
            ))));
  }
}
