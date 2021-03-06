import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/modules/home_step02/views/madal/imaplant_dropdown.dart';
import 'package:oral_fit/app/modules/home_step02/views/madal/implant_selectBox.dart';

import '../../../../core/theme/theme_data.dart';
import '../../controllers/home_step02_controller.dart';

void implantCrown(BuildContext context) {
  final _ = Get.find<HomeStep02Controller>();
  showModalBottomSheet<void>(
      backgroundColor: whiteColor,
      isScrollControlled: true,
      isDismissible: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      context: context,
      builder: (context) {
        return DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.90,
            maxChildSize: 1,
            minChildSize: 0.90,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
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
                                  '임플란트 크라운',
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
                              '어버트먼트',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: greyDarkColor5),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                implantSelect01('헥사', 1),
                                implantSelect01('논헥사', 2)
                              ],
                            ),
                            SizedBox(height: 10),
                            ImplantCrownDropDown(
                              dropdown: Obx(() => DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                    onChanged: _.dropDownOn01,
                                    value: _.dropDown01.value,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 30,
                                      color: greySubLiteColor9,
                                    ),
                                    items: _.dropDownList01.map((String text) {
                                      return DropdownMenuItem(
                                        child: Text(
                                          text,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        value: text,
                                      );
                                    }).toList(),
                                  ))),
                            ),
                            SizedBox(height: 20),
                            Text(
                              '픽스쳐 제조사',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: greyDarkColor5),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                implantSelect02('비보험', 1),
                                implantSelect02('보험', 2)
                              ],
                            ),
                            SizedBox(height: 10),
                            ImplantCrownDropDown(
                              dropdown: Obx(() => DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                    onChanged: _.dropDownOn02,
                                    value: _.dropDown02.value,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 30,
                                      color: greySubLiteColor9,
                                    ),
                                    items: _.dropDownList02.map((String text) {
                                      return DropdownMenuItem(
                                        child: Text(
                                          text,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        value: text,
                                      );
                                    }).toList(),
                                  ))),
                            ),
                            SizedBox(height: 20),
                            Text(
                              '힐링코핑',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: greyDarkColor5),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                implantSelect03('미사용', 1),
                                implantSelect03('사용', 2)
                              ],
                            ),
                            SizedBox(height: 10),
                            ImplantCrownDropDown(
                              dropdown: Obx(() => DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                    onChanged: _.dropDownOn03,
                                    value: _.dropDown03.value,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 30,
                                      color: greySubLiteColor9,
                                    ),
                                    items: _.dropDownList03.map((String text) {
                                      return DropdownMenuItem(
                                        child: Text(
                                          text,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        value: text,
                                      );
                                    }).toList(),
                                  ))),
                            ),
                            SizedBox(height: 10),
                            ImplantCrownDropDown(
                              dropdown: Obx(() => DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                    onChanged: _.dropDownOn04,
                                    value: _.dropDown04.value,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 30,
                                      color: greySubLiteColor9,
                                    ),
                                    items: _.dropDownList04.map((String text) {
                                      return DropdownMenuItem(
                                        child: Text(
                                          text,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        value: text,
                                      );
                                    }).toList(),
                                  ))),
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '모델명 : GTS-SURO4520',
                                style: TextStyle(
                                    fontSize: 16, color: greyDarkColor5),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              '임플란트 크라운 타입',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: greyDarkColor5),
                            ),
                            SizedBox(height: 10),
                            ImplantCrownDropDown(
                              dropdown: Obx(() => DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                    onChanged: _.dropDownOn05,
                                    value: _.dropDown05.value,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 30,
                                      color: greySubLiteColor9,
                                    ),
                                    items: _.dropDownList05.map((String text) {
                                      return DropdownMenuItem(
                                        child: Text(
                                          text,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        value: text,
                                      );
                                    }).toList(),
                                  ))),
                            ),
                            SizedBox(height: 10),
                            ImplantCrownDropDown(
                              dropdown: Obx(() => DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                    onChanged: _.dropDownOn06,
                                    value: _.dropDown06.value,
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 30,
                                      color: greySubLiteColor9,
                                    ),
                                    items: _.dropDownList06.map((String text) {
                                      return DropdownMenuItem(
                                        child: Text(
                                          text,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        value: text,
                                      );
                                    }).toList(),
                                  ))),
                            ),
                            SizedBox(height: 10),
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
                ),
              );
            });
      });
}

// class ImplantCrown01 extends GetView {
//   final _ = Get.find<HomeStep02Controller>();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.only(left: 20, right: 20),
//         height: 43,
//         width: Get.width,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(color: greyLiteColorD)),
//         child: Obx(() => DropdownButtonHideUnderline(
//                 child: DropdownButton(
//               onChanged: _.dropDownOn01,
//               value: _.dropDown01.value,
//               icon: Icon(
//                 Icons.keyboard_arrow_down,
//                 size: 30,
//                 color: greySubLiteColor9,
//               ),
//               items: _.dropDownList01.map((selectedType) {
//                 return DropdownMenuItem(
//                   child: Text(
//                     selectedType,
//                     style: TextStyle(fontSize: 14),
//                   ),
//                   value: selectedType,
//                 );
//               }).toList(),
//             ))));
//   }
// }
