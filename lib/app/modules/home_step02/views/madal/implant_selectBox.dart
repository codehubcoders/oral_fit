import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/theme_data.dart';
import '../../controllers/home_step02_controller.dart';

implantSelect01(String text, int index) {
  final _ = Get.find<HomeStep02Controller>();

  return Obx(() => GestureDetector(
        onTap: () {
          _.implant01.value = index;
        },
        child: Container(
          alignment: Alignment.center,
          width: Get.width * 0.43,
          height: 40,
          decoration: BoxDecoration(
              color:
                  (_.implant01.value == index) ? primaryLiteColor : whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: (_.implant01.value == index)
                    ? primaryColor
                    : greyLiteColorD,
              )),
          child: Text(
            text,
            style: TextStyle(
                color: (_.implant01.value == index)
                    ? primaryColor
                    : greySubLiteColor9,
                fontSize: 14),
          ),
        ),
      ));
}

implantSelect02(String text, int index) {
  final _ = Get.find<HomeStep02Controller>();

  return Obx(() => GestureDetector(
        onTap: () {
          _.implant02.value = index;
        },
        child: Container(
          alignment: Alignment.center,
          width: Get.width * 0.43,
          height: 40,
          decoration: BoxDecoration(
              color:
                  (_.implant02.value == index) ? primaryLiteColor : whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: (_.implant02.value == index)
                    ? primaryColor
                    : greyLiteColorD,
              )),
          child: Text(
            text,
            style: TextStyle(
                color: (_.implant02.value == index)
                    ? primaryColor
                    : greySubLiteColor9,
                fontSize: 14),
          ),
        ),
      ));
}

implantSelect03(String text, int index) {
  final _ = Get.find<HomeStep02Controller>();

  return Obx(() => GestureDetector(
        onTap: () {
          _.implant03.value = index;
        },
        child: Container(
          alignment: Alignment.center,
          width: Get.width * 0.43,
          height: 40,
          decoration: BoxDecoration(
              color:
                  (_.implant03.value == index) ? primaryLiteColor : whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: (_.implant03.value == index)
                    ? primaryColor
                    : greyLiteColorD,
              )),
          child: Text(
            text,
            style: TextStyle(
                color: (_.implant03.value == index)
                    ? primaryColor
                    : greySubLiteColor9,
                fontSize: 14),
          ),
        ),
      ));
}
