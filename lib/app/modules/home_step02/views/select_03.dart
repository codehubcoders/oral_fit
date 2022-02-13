import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import '../../../global_widget/selected_box.dart';
import '../controllers/home_step02_controller.dart';
import 'madal/crack_crown.dart';
import 'madal/implant_crown.dart';

class Step02Selecte03 extends GetView {
  final _ = Get.find<HomeStep02Controller>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _.step02_03.length,
        itemBuilder: (context, index) {
          return Obx(() => GestureDetector(
              onTap: () {
                _.step02Select03.value = index;
                if (_.step02Select03.value == 0) {
                  implantCrown(context);
                }

                if (_.step02Select03.value == 1) {
                  crackCrown(context);
                }
              },
              child: _.step02Select03.value == index
                  ? SelectedBox(
                      title: _.step02_03[index],
                      bgColor: primaryLiteColor,
                      borderColor: selectFontColor,
                      fonsSize: 14,
                      fontColor: primaryColor,
                      width: Get.width * 0.447,
                    )
                  : SelectedBox(
                      title: _.step02_03[index],
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
