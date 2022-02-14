import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/theme/theme_data.dart';

void stateModal() {
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
                stateBox(' 접수대기', '치과에서 의뢰서를 제출하고 기공소 또는 외주 기공소에서 접수하지 않은 상태'),
                stateBox(
                    ' 작업대기', '기공소에서 접수하여 러버 임프레션, 구강스캔파일 또는 Shade 자료 매칭중인 상태'),
                stateBox(' 모델제작', '러버 임프레션으로 석고 모델을 제작중인 상태'),
                stateBox(' 스캔', '석고모델을 스캔중인 상태'),
                stateBox(' 디자인', '스캔한 석고모델에 어버트먼트, 크라운을 캐드 디자인하는 상태'),
                stateBox(' 가공', '밀링머신으로 출력, 포세린, 글레이징, 컬러링 등 가공중인 상태'),
                stateBox(' 적합', '교합을 보는 상태'),
                stateBox(' 검수', '제품 검수중인 상태'),
                stateBox(' 배송준비중', '제작이 완료되어 배송 준비중인 상태'),
              ])));
}

stateBox(String title, String subtitle) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Get.width * 0.2,
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(fontSize: 14, color: greySubLiteColor9),
          ),
        ),
        Expanded(
          child: Text(
            subtitle,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    ),
  );
}
