import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import '../../../global_widget/selected_box.dart';
import '../controllers/home_controller.dart';

class Selecte03 extends GetView {
  final _ = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _.step01_03.length,
        itemBuilder: (context, index) {
          return Obx(() => GestureDetector(
              onTap: () {
                _.selectedIndex03.value = index;
              },
              child: _.selectedIndex03.value == index
                  ? SelectedBox(
                      title: _.step01_03[index],
                      bgColor: primaryLiteColor,
                      borderColor: selectFontColor,
                      fonsSize: 14,
                      fontColor: primaryColor,
                      width: Get.width * 0.447,
                    )
                  : SelectedBox(
                      title: _.step01_03[index],
                      bgColor: whiteColor,
                      borderColor: greyLiteColorD,
                      fonsSize: 14,
                      fontColor: greyDarkColor5,
                      width: Get.width * 0.447,
                    )));
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: Get.width * 0.03);
        },
      ),
    );
  }
}
