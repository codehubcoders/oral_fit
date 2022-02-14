import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/order_ditail.dart';

import '../../../../../core/theme/theme_data.dart';

void workHistory() {
  Get.defaultDialog(
      radius: 8,
      contentPadding: EdgeInsets.zero,
      title: '',
      titlePadding: EdgeInsets.zero,
      titleStyle: TextStyle(fontSize: 0),
      content: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 20, 10),
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '작업내역',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.close,
                        ))
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    smallBox(
                        bgColor: Color(0xFFF3F3F3),
                        title: '종이의뢰/러버인상',
                        fontColor: primaryFontColor2,
                        border: Colors.transparent),
                  ],
                ),
                Text(
                  '의뢰일시 2021-11-14 17:52',
                  style: TextStyle(color: greySubLiteColor9, fontSize: 12),
                ),
                Text(
                  '수정일시 2021-11-15 17:52',
                  style: TextStyle(color: greySubLiteColor9, fontSize: 12),
                ),
              ],
            ),
          ),
          Divider(
            color: greyLiteColorD,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '접수',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    Row(
                      children: [
                        Text(
                          '2021-11-15 14:22',
                          style:
                              TextStyle(color: greySubLiteColor9, fontSize: 10),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '김정임',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '모델',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    Row(
                      children: [
                        Text(
                          '2021-11-15 14:26',
                          style:
                              TextStyle(color: greySubLiteColor9, fontSize: 10),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '김한철',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  '디자인',
                  style: TextStyle(fontSize: 14, color: primaryColor),
                ),
                SizedBox(height: 5),
                Text(
                  '가공',
                  style: TextStyle(fontSize: 14, color: greySubLiteColor9),
                ),
                SizedBox(height: 5),
                Text(
                  '적합',
                  style: TextStyle(fontSize: 14, color: greySubLiteColor9),
                ),
                SizedBox(height: 5),
                Text(
                  '검수',
                  style: TextStyle(fontSize: 14, color: greySubLiteColor9),
                ),
                SizedBox(height: 5),
                Text(
                  '배송',
                  style: TextStyle(fontSize: 14, color: greySubLiteColor9),
                ),
              ],
            ),
          )
        ],
      ));
}
