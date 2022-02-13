import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/modules/order_list/views/list_box.dart';
import 'package:oral_fit/app/modules/order_list/views/search_button.dart';

import '../../../core/theme/theme_data.dart';
import '../../../global_widget/custom_button.dart';
import '../controllers/order_list_controller.dart';

class OrderListView extends GetView<OrderListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 62,
        backgroundColor: primaryDarkColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              logoImage,
              width: 112,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.access_time, size: 25)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings_outlined, size: 25)),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              width: Get.width,
              color: Color(0xffE2E8EB),
              padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    arrowButton(
                      () {},
                      Icon(
                        Icons.chevron_left,
                        color: primaryFontColor2,
                      ),
                    ),
                    Text(
                      '2021년 11월 18일',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    arrowButton(
                      () {},
                      Icon(
                        Icons.navigate_next,
                        color: primaryFontColor2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      borderSide: BorderSide.none,
                      buttonColor: primaryColor,
                      fontsize: 16,
                      fontWeight: FontWeight.w400,
                      onTap: () {},
                      size: Size(Get.width * 0.45, 51),
                      textColor: whiteColor,
                      title: '접수일',
                    ),
                    CustomButton(
                      borderSide: BorderSide(color: greyLiteColorD),
                      buttonColor: whiteColor,
                      fontsize: 16,
                      fontWeight: FontWeight.w400,
                      onTap: () {},
                      size: Size(Get.width * 0.45, 51),
                      textColor: greyDarkColor3,
                      title: '완성일',
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(
                      top: 15,
                    ),
                    alignment: Alignment.centerRight,
                    child: SearchButton()),
              ]),
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return OrderListBox();
                },
                separatorBuilder: (BuildContext context, int index) => Divider(
                      color: Color(0xFFE2E8EB),
                      thickness: 10,
                    )),
          ],
        )),
      ),
    );
  }
}

arrowButton(Function? ontap, Icon icon) {
  return GestureDetector(
      onTap: () {},
      child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(6)),
          child: icon));
}
