import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import '../../../global_widget/custom_button.dart';
import '../controllers/order_list_controller.dart';

class SearchButton extends GetView {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _ = Get.find<OrderListController>();
    return GestureDetector(
        onTap: () {
          showModalBottomSheet<void>(
              isScrollControlled: true,
              backgroundColor: whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: Get.height * 0.85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '기공소명',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
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
                                      onChanged: (String? value) {
                                        _.dropdownName.value = value!;
                                      },
                                      value: _.dropdownName.value,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 30,
                                        color: greySubLiteColor9,
                                      ),
                                      items: _.dropdownNameList
                                          .map((selectedType) {
                                        return DropdownMenuItem(
                                          child: Text(
                                            selectedType,
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          value: selectedType,
                                        );
                                      }).toList(),
                                    )))),
                            SizedBox(height: 20),
                            Text(
                              '크라운',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
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
                                      onChanged: (String? value) {
                                        _.dropdownCrown.value = value!;
                                      },
                                      value: _.dropdownCrown.value,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 30,
                                        color: greySubLiteColor9,
                                      ),
                                      items: _.dropdownCrownList
                                          .map((selectedType) {
                                        return DropdownMenuItem(
                                          child: Text(
                                            selectedType,
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          value: selectedType,
                                        );
                                      }).toList(),
                                    )))),
                            SizedBox(height: 20),
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 43,
                              width: Get.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: greyLiteColorD)),
                              child: TextField(
                                controller: _.searchInput,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  hintText: '환자명 or 주문번호 입력',
                                  hintStyle: TextStyle(
                                      fontSize: 12, color: primaryFontColor2),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              '주문유형',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                radioButton01(0),
                                SizedBox(width: 5),
                                radioButton01(1),
                                SizedBox(width: 5),
                                radioButton01(2),
                                SizedBox(width: 5),
                                radioButton01(3),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              '의뢰서',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                radioButton02(0),
                                SizedBox(width: 5),
                                radioButton02(1),
                                SizedBox(width: 5),
                                radioButton02(2),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              '상태',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                radioButton03(0),
                                SizedBox(width: 5),
                                radioButton03(1),
                                SizedBox(width: 5),
                                radioButton03(2),
                                SizedBox(width: 5),
                                radioButton03(3),
                                SizedBox(width: 5),
                                radioButton03(4),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                radioButton03(5),
                                SizedBox(width: 5),
                                radioButton03(6),
                                SizedBox(width: 5),
                                radioButton03(7),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                radioButton03(8),
                                SizedBox(width: 5),
                                radioButton03(9),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                        child: CustomButton(
                          borderSide: BorderSide.none,
                          buttonColor: primaryColor,
                          fontsize: 14,
                          fontWeight: FontWeight.w700,
                          onTap: () {
                            Get.back();
                          },
                          size: Size(Get.width, 43),
                          textColor: whiteColor,
                          title: '검색',
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: Container(
          width: 62,
          height: 32,
          decoration: BoxDecoration(
              color: Color(0xFFEDF8FF),
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '검색',
                  style: TextStyle(color: primaryColor, fontSize: 12),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 22,
                )
              ]),
        ));
  }
}

radioButton01(int index) {
  final _ = Get.find<OrderListController>();
  return Obx(() => GestureDetector(
        onTap: () {
          _.orderTypeInt.value = index;
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
              height: 34,
              decoration: BoxDecoration(
                  color: (_.orderTypeInt.value == index)
                      ? primaryColor
                      : whiteColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: (_.orderTypeInt.value == index)
                          ? Colors.transparent
                          : greyLiteColorD)),
              child: Text(
                _.orderTypeList[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: (_.orderTypeInt.value == index)
                        ? whiteColor
                        : greyDarkColor6,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ));
}

radioButton02(int index) {
  final _ = Get.find<OrderListController>();
  return Obx(() => GestureDetector(
        onTap: () {
          _.requestpeInt.value = index;
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
              height: 34,
              decoration: BoxDecoration(
                  color: (_.requestpeInt.value == index)
                      ? primaryColor
                      : whiteColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: (_.requestpeInt.value == index)
                          ? Colors.transparent
                          : greyLiteColorD)),
              child: Text(
                _.requestList[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: (_.requestpeInt.value == index)
                        ? whiteColor
                        : greyDarkColor6,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ));
}

radioButton03(int index) {
  final _ = Get.find<OrderListController>();
  return Obx(() => GestureDetector(
        onTap: () {
          _.stateeInt.value = index;
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
              height: 34,
              decoration: BoxDecoration(
                  color:
                      (_.stateeInt.value == index) ? primaryColor : whiteColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: (_.stateeInt.value == index)
                          ? Colors.transparent
                          : greyLiteColorD)),
              child: Text(
                _.stateList[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: (_.stateeInt.value == index)
                        ? whiteColor
                        : greyDarkColor6,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ));
}
