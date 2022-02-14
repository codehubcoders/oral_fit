import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/order_ditail.dart';

import '../../../core/theme/theme_data.dart';

class OrderListBox extends GetView {
  const OrderListBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
      // height: 328,
      width: Get.width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '디자인',
                      style: TextStyle(
                          color: Color(0xFFF5941F),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '주문번호 00426961',
                      style: TextStyle(color: greySubLiteColor9, fontSize: 14),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.to(OrderDetail());
                  },
                  child: Text('주문상세',
                      style: TextStyle(fontSize: 14, color: primaryFontColor2)),
                )
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  '완성일',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  '22-01-09',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(width: 10),
                Text(
                  '|  접수일 22-12-25',
                  style: TextStyle(fontSize: 14, color: greySubLiteColor9),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Text(
                  '커스텀기공소',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 10),
                Text(
                  '김만식(남)',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(children: [
              smallContainer(
                  title: '종이의뢰 / 러버인상',
                  fontColor: Color(0xFF222222),
                  bgColor: Color(0xFFE3E3E3)),
              smallContainer(
                  title: '컨펌요청',
                  fontColor: whiteColor,
                  bgColor: Color(0xFFF5941F)),
              smallContainer(
                  title: '통화요청',
                  fontColor: whiteColor,
                  bgColor: Color(0xFFF5941F))
            ]),
            SizedBox(height: 10),
            largeContainer01(),
            SizedBox(height: 5),
            largeContainer02(),
          ]),
    );
  }
}

smallContainer({String? title, Color? fontColor, Color? bgColor}) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
    child: Container(
      height: 25,
      decoration:
          BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(2)),
      padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
      margin: EdgeInsets.only(right: 5),
      child: Text(
        title!,
        style: TextStyle(color: fontColor, fontSize: 12),
      ),
    ),
  );
}

largeContainer01() {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    width: Get.width,
    decoration: BoxDecoration(
        border: Border.all(color: greyLiteColorD),
        borderRadius: BorderRadius.circular(8)),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '임플란트 크라운',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 10),
              smallContainer(
                  title: '수정됨',
                  fontColor: whiteColor,
                  bgColor: Color(0xFFF06B6B))
            ],
          ),
          Text(
            '신규주문',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w700, color: primaryColor),
          ),
        ],
      ),
      Text(
        'Zirconia Layered Implant Crown(전치 Labial 빌드업)',
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 14),
      ),
    ]),
  );
}

largeContainer02() {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    width: Get.width,
    decoration: BoxDecoration(
        border: Border.all(color: greyLiteColorD),
        borderRadius: BorderRadius.circular(8)),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '지대치 프렙 크라운/인레이',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 10),
          Text(
            'Remake',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFFEF2828)),
          ),
        ],
      ),
      Text(
        '전치부 빌드업 Zirconia Crown (P.F.Z)',
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: 14),
      ),
    ]),
  );
}
