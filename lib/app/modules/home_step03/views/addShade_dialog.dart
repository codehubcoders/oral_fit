import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

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
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.error,
                      color: greySubLiteColor9,
                    ),
                    Text(' 상태',
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ],
                ),
                SizedBox(height: 5),
              ])));
}
