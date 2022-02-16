import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/theme_data.dart';
import '../../controllers/home_step02_controller.dart';

void prepCrown(BuildContext context) {
  final _ = Get.find<HomeStep02Controller>();
  showModalBottomSheet<void>(
      backgroundColor: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '지대치 프렙 크라운/인레이',
                          style: TextStyle(
                              color: greyDarkColor5,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.close,
                              color: greySubLiteColor9,
                            ))
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      '보험여부',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: greyDarkColor5),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        prepSelect('Vital', 1),
                        prepSelect('Non-Vital', 2)
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 43,
                        width: Get.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: greyLiteColorD)),
                        child: Obx(() => DropdownButtonHideUnderline(
                                child: DropdownButton(
                              onChanged: _.crackdropDownOn,
                              value: _.crackdropDown.value,
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                size: 30,
                                color: greySubLiteColor9,
                              ),
                              items: _.crackList.map((String text) {
                                return DropdownMenuItem(
                                  child: Text(
                                    text,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  value: text,
                                );
                              }).toList(),
                            )))),
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width,
                    height: 54,
                    color: primaryColor,
                    child: Text(
                      '선택완료',
                      style: TextStyle(color: whiteColor, fontSize: 16),
                    ),
                  ))
            ],
          ),
        );
      });
}

prepSelect(String text, int index) {
  final _ = Get.find<HomeStep02Controller>();

  return Obx(() => GestureDetector(
        onTap: () {
          _.crackCrown.value = index;
        },
        child: Container(
          alignment: Alignment.center,
          width: Get.width * 0.43,
          height: 40,
          decoration: BoxDecoration(
              color:
                  (_.crackCrown.value == index) ? primaryLiteColor : whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: (_.crackCrown.value == index)
                    ? primaryColor
                    : greyLiteColorD,
              )),
          child: Text(
            text,
            style: TextStyle(
                color: (_.crackCrown.value == index)
                    ? primaryColor
                    : greySubLiteColor9,
                fontSize: 14),
          ),
        ),
      ));
}
