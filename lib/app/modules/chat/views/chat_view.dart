import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/modules/chat/views/chat_detail.dart';

import '../../../core/theme/theme_data.dart';
import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<ChatController>(() => ChatController());
    return Scaffold(
      backgroundColor: Color(0xFFE2E8EB),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 62,
        backgroundColor: primaryDarkColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              logoImage,
              width: 112,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.access_time, size: 25)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings_outlined, size: 25)),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  arrowButton(
                    () {},
                    Icon(
                      Icons.chevron_left,
                      color: primaryFontColor2,
                    ),
                  ),
                  Text(
                    '2021년 11월 18일',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 29),
                  ),
                  arrowButton(
                    () {},
                    Icon(
                      Icons.navigate_next,
                      color: primaryFontColor2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              shadePreviewList(),
            ],
          ),
        )),
      ),
    );
  }
}

arrowButton(Function? ontap, Icon icon) {
  return GestureDetector(
      onTap: () {},
      child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(6)),
          child: icon));
}

shadePreviewList() {
  final _ = Get.find<ChatController>();
  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: 4,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
          onTap: () {
            Get.to(ChatDetail());
          },
          child: Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              padding: EdgeInsets.only(left: 15, right: 15),
              height: 51,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/chatImg.png',
                        width: 33,
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '온누리 기공소',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 14),
                          ),
                          Text(
                            '이미지',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '오후 3:17',
                        style: TextStyle(fontSize: 9, color: greySubLiteColor9),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 3),
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFFEF2828)),
                        child: Text(
                          '2',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ],
              )));
    },
  );
}
