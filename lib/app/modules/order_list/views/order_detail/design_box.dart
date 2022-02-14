import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/madal/edit_history.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/order_ditail.dart';

import '../../../../core/theme/theme_data.dart';
import '../../../../global_widget/custom_button.dart';

class DesignBox extends GetView {
  const DesignBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(color: greyLiteColorD),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        style: TextStyle(color: greyDarkColor5, fontSize: 14))
                  ],
                ),
              ),
              SizedBox(height: 10),
              EditDateBox(),
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: CustomButton(
                  borderSide: BorderSide(color: greyLiteColorD),
                  buttonColor: whiteColor,
                  fontsize: 14,
                  fontWeight: FontWeight.w400,
                  onTap: () {},
                  size: Size(Get.width, 43),
                  textColor: greyDarkColor3,
                  title: '주문수정',
                ),
              ),
            ],
          ),
        ),
        Container(
          width: Get.width,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(color: greyLiteColorD),
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '신규주문',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: primaryColor),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  smallBox(
                      bgColor: primaryColor,
                      title: 'Single',
                      fontColor: whiteColor,
                      border: Colors.transparent),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: '지대치 프렙 크라운/인레이 ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: primaryFontColor2)),
                      TextSpan(
                          text: ' \nGold Inlay',
                          style:
                              TextStyle(fontSize: 14, color: primaryFontColor2))
                    ]),
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
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: CustomButton(
                  borderSide: BorderSide(color: greyLiteColorD),
                  buttonColor: whiteColor,
                  fontsize: 14,
                  fontWeight: FontWeight.w400,
                  onTap: () {},
                  size: Size(Get.width, 43),
                  textColor: greyDarkColor3,
                  title: '주문수정',
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class EditDateBox extends GetView {
  final editBox = 0.obs;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 0.45,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () {
              editHistory();
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: BoxDecoration(
                  color: greyBoxColor, borderRadius: BorderRadius.circular(8)),
              child: Text('2021-11-25'),
            ),
          );
        }));
  }
}

numberbox() {
  return Container(
    alignment: Alignment.center,
    width: 20,
    height: 20,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: primaryColor),
    child: Text(
      '7',
      style: TextStyle(color: whiteColor, fontSize: 16),
    ),
  );
}
