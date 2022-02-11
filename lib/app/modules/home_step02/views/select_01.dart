import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import '../../../global_widget/selected_box.dart';
import '../controllers/home_step02_controller.dart';

class Step02Selecte01 extends GetView {
  final _ = Get.find<HomeStep02Controller>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _.step02_01.length,
        itemBuilder: (context, index) {
          return Obx(() => GestureDetector(
              onTap: () {
                _.step02Select01.value = index;
              },
              child: _.step02Select01.value == index
                  ? SelectedBox(
                      title: _.step02_01[index],
                      bgColor: primaryLiteColor,
                      borderColor: selectFontColor,
                      fonsSize: 14,
                      fontColor: primaryColor,
                      width: Get.width * 0.29,
                    )
                  : SelectedBox(
                      title: _.step02_01[index],
                      bgColor: whiteColor,
                      borderColor: greyLiteColorD,
                      fonsSize: 14,
                      fontColor: greyDarkColor5,
                      width: Get.width * 0.29,
                    )));
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: Get.width * 0.024);
        },
      ),
    );
  }
}
