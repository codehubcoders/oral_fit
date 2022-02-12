import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/modules/home_step02/views/madal/ponticType.dart';

import '../../../global_widget/sleect_box_step02.dart';
import '../controllers/home_step02_controller.dart';

class Step02Selecte02 extends GetView {
  final _ = Get.find<HomeStep02Controller>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _.step02_02.length,
        itemBuilder: (context, index) {
          return Obx(() => GestureDetector(
              onTap: () {
                _.step02Select02.value = index;
                if (_.step02Select02.value == 2) {
                  ponticType(context);
                }
              },
              child: _.step02Select02.value == index
                  ? SelectedBoxStep02(
                      title: _.step02_02[index],
                      bgColor: primaryLiteColor,
                      borderColor: selectFontColor,
                      fonsSize: 14,
                      fontColor: primaryColor,
                      width: Get.width * 0.29,
                      imageUrl: _.step02_02img[index],
                    )
                  : SelectedBoxStep02(
                      title: _.step02_02[index],
                      bgColor: whiteColor,
                      borderColor: greyLiteColorD,
                      fonsSize: 14,
                      fontColor: greyDarkColor5,
                      width: Get.width * 0.29,
                      imageUrl: _.step02_02img[index],
                    )));
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: Get.width * 0.024);
        },
      ),
    );
  }
}
