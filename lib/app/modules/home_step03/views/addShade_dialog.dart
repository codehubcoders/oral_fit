import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import '../../../global_widget/custom_button.dart';

void addShadeImg() {
  Get.defaultDialog(
      radius: 8,
      contentPadding: EdgeInsets.zero,
      title: '',
      titlePadding: EdgeInsets.zero,
      titleStyle: TextStyle(fontSize: 0),
      content: Container(
        padding: EdgeInsets.fromLTRB(15, 20, 20, 10),
        width: Get.width,
        height: Get.height * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Shade 등록',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/chatAddimg.png'),
                                fit: BoxFit.contain)),
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.cancel,
                            color: greyDarkColor6,
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]),
            Container(
              alignment: Alignment.bottomRight,
              child: CustomButton(
                borderSide: BorderSide.none,
                buttonColor: primaryColor,
                fontsize: 14,
                fontWeight: FontWeight.w600,
                onTap: () {
                  Get.back();
                },
                size: Size(Get.width * 0.2, 19),
                textColor: whiteColor,
                title: '등록',
              ),
            ),
          ],
        ),
      ));
}
