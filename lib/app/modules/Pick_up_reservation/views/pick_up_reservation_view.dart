import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/modules/Pick_up_reservation/views/bottom_sheet.dart';

import '../../../core/theme/theme_data.dart';
import '../controllers/pick_up_reservation_controller.dart';

class PickUpReservationView extends GetView<PickUpReservationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          '수거예약',
          style: TextStyle(
              fontSize: 18, color: greyLiteColorD, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                child: Row(
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
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
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
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 20, 20, 5),
                alignment: Alignment.bottomRight,
                child: Text(
                  '27건',
                  style: TextStyle(color: greyDarkColor6, fontSize: 12),
                ),
              ),
              pickUpList(),
              bottomSheet(context),
            ],
          ),
        ),
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

pickUpList() {
  return Expanded(
    child: Container(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: Get.width,
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(8)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/picup.png',
                    width: 33,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text: '온누리치과',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 14),
                        ),
                        TextSpan(
                          text: ' > 정밀기공소',
                          style: TextStyle(fontSize: 14),
                        )
                      ])),
                      Text(
                        '2022.01.28(금) 오전',
                        style: TextStyle(
                            color: greyDarkColor6,
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                      Container(
                        width: Get.width * 0.75,
                        child: Text(
                          '입구쪽에 있는 소화전에 넣어두겠습니다. 조금 세게당겨야 열립니다 ^^ 신규3건, 리메이크1건 입니다.',
                          style: TextStyle(color: greyDarkColor6, fontSize: 12),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    ),
  );
}
