import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/theme_data.dart';

class AlrmDetail extends GetView {
  const AlrmDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        color: whiteColor,
        height: 61,
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.attach_file,
                  color: Colors.black.withOpacity(0.54),
                )),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 15),
                height: 40,
                child: TextField(
                  // controller: _.searchInput,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.send,
                        size: 20,
                        color: primaryColor,
                      ),
                      onPressed: () {},
                    ),
                    contentPadding: EdgeInsets.all(10),
                    hintText: '메세지 입력',
                    hintStyle: TextStyle(fontSize: 14, color: greyLiteColorD),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyLiteColorD),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyLiteColorD),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyLiteColorD),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFE2E8EB),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios, color: greyLiteColorD)),
        backgroundColor: primaryDarkColor,
        elevation: 0,
        toolbarHeight: 62,
        title: Text(
          '수거알림',
          style: TextStyle(
              fontSize: 18, color: greyLiteColorD, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text('1월 14일',
                style: TextStyle(color: greySubLiteColor9, fontSize: 14)),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Image.asset(
                  'assets/images/alarmImg.png',
                  width: 24,
                ),
                SizedBox(width: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('수거알림',
                            style:
                                TextStyle(color: greyDarkColor3, fontSize: 13)),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          width: Get.width * 0.55,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8))),
                          child: Text(
                            '커스텀 기공소에 1월 16일  오전수거 요청되었습니다.',
                            style:
                                TextStyle(fontSize: 13, color: greyDarkColor3),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 5),
                    Text(
                      '오후 2:56',
                      style: TextStyle(color: greySubLiteColor9, fontSize: 9),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
