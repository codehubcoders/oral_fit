import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/theme_data.dart';

class ChatDetail extends GetView {
  const ChatDetail({Key? key}) : super(key: key);

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
          '온누리기공소',
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
                  'assets/images/chatImg.png',
                  width: 24,
                ),
                SizedBox(width: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('온누리기공소',
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
                            '이미지 파일 보내주세요 이미지 확인 후 다시 연락드리겠습니다. 감사합니다.',
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
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '오후 2:56',
                        style: TextStyle(color: greySubLiteColor9, fontSize: 9),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: Get.width * 0.55,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8))),
                        child: Text(
                          '이미지 파일 확인부탁드립니다~',
                          style: TextStyle(fontSize: 13, color: whiteColor),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/chatAddimg.png'),
                            fit: BoxFit.contain)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
