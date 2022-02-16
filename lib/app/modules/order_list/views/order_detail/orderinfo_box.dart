import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/madal/state_madal.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/order_ditail.dart';

import '../../../../core/theme/theme_data.dart';
import 'madal/dental_info.dart';

class OrderInfoBox extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0xFFF4FBFF), borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: Get.width * 0.2,
                      child: Text('완성일',
                          style: TextStyle(
                              color: greyDarkColor3,
                              fontSize: 14,
                              fontWeight: FontWeight.w700))),
                  Text(
                    '2021. 11. 15 오전',
                    style: TextStyle(color: primaryColor, fontSize: 14),
                  ),
                ],
              ),
              GestureDetector(
                  onTap: () {
                    stateModal();
                  },
                  child: Container(
                    child: Text('접기',
                        style:
                            TextStyle(color: greySubLiteColor9, fontSize: 14)),
                  )),
            ],
          ),
          SizedBox(height: 5),
          Divider(
            color: Color(0xFFD7E8F1),
            thickness: 1.5,
          ),
          Row(
            children: [
              Container(
                  width: Get.width * 0.2,
                  child: Text('치과명',
                      style: TextStyle(
                          color: greyDarkColor3,
                          fontSize: 14,
                          fontWeight: FontWeight.w700))),
              Text(
                '강서예치과',
                style: TextStyle(color: greyDarkColor3, fontSize: 14),
              ),
              SizedBox(width: 10),
              GestureDetector(
                  onTap: () {
                    dentalInfoModal();
                  },
                  child: smallBox(
                      bgColor: whiteColor,
                      title: '치과정보',
                      fontColor: greyDarkColor3,
                      border: greyLiteColorD)),
            ],
          ),
          infoBox('기공소', '모두기공소'),
          infoBox('환자명', '정사라(여)'),
          infoBox('담당원장', '김원장'),
          infoBox('담당스텝', '김스텝'),
          Row(
            children: [
              Container(
                  width: Get.width * 0.2,
                  child: Text('의뢰서',
                      style: TextStyle(
                          color: greyDarkColor3,
                          fontSize: 14,
                          fontWeight: FontWeight.w700))),
              Text(
                '종이의뢰/러버인상',
                style: TextStyle(color: greyDarkColor3, fontSize: 14),
              ),
              SizedBox(width: 10),
              smallBox(
                  bgColor: whiteColor,
                  title: '의뢰서 보기',
                  fontColor: greyDarkColor3,
                  border: greyLiteColorD)
            ],
          ),
        ],
      ),
    );
  }
}

infoBox(String title, String subtitle) {
  return Row(
    children: [
      Container(
          margin: EdgeInsets.only(top: 15),
          width: Get.width * 0.2,
          child: Text(title,
              style: TextStyle(
                  color: greyDarkColor3,
                  fontSize: 14,
                  fontWeight: FontWeight.w700))),
      Text(
        subtitle,
        style: TextStyle(color: greyDarkColor3, fontSize: 14),
      ),
    ],
  );
}
