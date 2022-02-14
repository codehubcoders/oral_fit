import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/design_box.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/order_ditail.dart';

import '../../../../../core/theme/theme_data.dart';

void editHistory() {
  Get.defaultDialog(
      radius: 8,
      contentPadding: EdgeInsets.zero,
      title: '',
      titlePadding: EdgeInsets.zero,
      titleStyle: TextStyle(fontSize: 0),
      content: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          width: Get.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2021-11-25',
                  style: TextStyle(color: greySubLiteColor9, fontSize: 14),
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
            SizedBox(height: 5),
            Text(
              'Remake',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xFFEF2828)),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                smallBox(
                    bgColor: primaryColor,
                    title: 'Bridge (Modified Ridge Lap)',
                    fontColor: whiteColor,
                    border: Colors.transparent),
                Text(
                  '임플란트 크라운',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Row(
              children: [
                smallBox(
                    bgColor: primaryColor,
                    title: '헥사',
                    fontColor: whiteColor,
                    border: Colors.transparent),
                Text(
                  '커스텀 어버트먼트',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Row(
              children: [
                smallBox(
                    bgColor: primaryColor,
                    title: '비보험',
                    fontColor: whiteColor,
                    border: Colors.transparent),
                Text(
                  '오스템 레귤러 픽스쳐',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )
              ],
            ),
            Row(
              children: [
                smallBox(
                    bgColor: primaryColor,
                    title: '크라운+\n어버트먼트 본딩',
                    fontColor: whiteColor,
                    border: Colors.transparent),
                Expanded(
                  child: Text(
                    'Zirconia Layered Implant Crown(전치 Labial 빌드업)',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                smallBox(
                    bgColor: primaryLiteColor,
                    title: '힐링코핑',
                    fontColor: primaryColor,
                    border: primaryColor),
                Expanded(
                  child: Text(
                    '오스템 TS 레귤러 / GTS-SURO4520',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              margin: EdgeInsets.only(
                  left: Get.width * 0.1, right: Get.width * 0.1),
              child: Table(
                border: TableBorder(
                  horizontalInside: BorderSide(
                      width: 1,
                      color: greyLiteColorD,
                      style: BorderStyle.solid),
                  verticalInside: BorderSide(
                      width: 1,
                      color: greyLiteColorD,
                      style: BorderStyle.solid),
                ),
                children: [
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Text('',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(7),
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text('6', style: TextStyle(fontSize: 16)),
                          SizedBox(width: 5),
                          numberbox(),
                          SizedBox(width: 5),
                          Text('8', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Text(
                        '',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Text('',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14)),
                    ),
                  ]),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Color(0xFFFFF1F1),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.assignment_turned_in,
                                size: 20,
                                color: Color(0xFFEF2828),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '추가사항',
                                style: TextStyle(
                                    color: Color(0xFFEF2828),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '2021-11-21',
                                style: TextStyle(
                                    color: greySubLiteColor9, fontSize: 12),
                              ),
                            ],
                          ),
                          Text(
                            '- 12,000원',
                            style: TextStyle(
                                color: Color(0xFFEF2828), fontSize: 14),
                          ),
                        ]),
                    SizedBox(height: 5),
                    Text('비용이 더 드는 예외사항 메모',
                        style: TextStyle(color: greyDarkColor5, fontSize: 14)),
                    SizedBox(height: 5),
                  ],
                )),
          ])));
}
