import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/theme/theme_data.dart';

void dentalInfoModal() {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.error,
                          size: 20,
                          color: greySubLiteColor9,
                        ),
                        Text(' 치과정보',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ],
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
                stateBox(' 업체명', '강서예치과의원'),
                stateBox(' 전화번호', '02-1564-1234'),
                stateBox(' 병원장', '김철호'),
                stateBox(' 주소', '서울 특설디 동작구'),
                stateBox(' 이메일', '김철호'),
                stateBox(' 카카오톡ID', 'GangseoYeah'),
                SizedBox(height: 20),
                Text(' 치과메모',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                SizedBox(height: 5),
                Container(
                  height: 100,
                  child: TextField(
                    enabled: false,
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.top,
                    expands: true,
                    maxLines: null,
                    decoration: InputDecoration(
                      isDense: true,
                      hintStyle:
                          TextStyle(color: primaryFontColor2, fontSize: 14),
                      hintText: '강한 적합 선호',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(width: 1, color: greyLiteColorD),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(width: 1, color: greyLiteColorD),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    keyboardType: TextInputType.multiline,
                  ),
                ),
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
