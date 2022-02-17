import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/global_widget/custom_button.dart';

import '../../../core/theme/theme_data.dart';
import '../controllers/home_step02_controller.dart';

class ResultContainer extends GetView<HomeStep02Controller> {
  @override
  Widget build(BuildContext context) {
    final _ = Get.find<HomeStep02Controller>();
    return Center(
      child: Container(
          padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
          width: Get.width,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: greyDarkColor6)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '임플란트 크라운',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  !_.saveResultButton.value
                      ? IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            color: greySubLiteColor9,
                          ))
                      : Container()
                ],
              ),
              Divider(
                color: greyLiteColorD,
              ),
              resultBox(
                  title: 'single',
                  subtitle: '임플란트 크라운',
                  fontWeight: FontWeight.w700),
              resultBox(
                  title: '헥사',
                  subtitle: '커스텀 어버트먼트',
                  fontWeight: FontWeight.w400),
              resultBox(
                  title: '비보험',
                  subtitle: '오스템 레귤러 픽스쳐',
                  fontWeight: FontWeight.w400),
              SizedBox(height: 5),
              resultBox(
                  title: '크라운+어버트먼트 본딩',
                  subtitle: '',
                  fontWeight: FontWeight.w400),
              Text(
                'Zirconia Layered Implant Crown\n(전치 Labial 빌드업)',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  smallBoxLine(title: '힐링코핑'),
                  Text(
                    '오스템 TS 레귤러 / GTS-SURO4520',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  '치식번호',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                margin: EdgeInsets.only(
                    left: Get.width * 0.2, right: Get.width * 0.2),
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
                        child: Text('2',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14)),
                      ),
                      Container(
                        padding: EdgeInsets.all(7),
                        child: Text('6',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14)),
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
                        child: Text('6',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14)),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    borderSide: BorderSide(color: greyLiteColorD),
                    buttonColor: whiteColor,
                    fontsize: 14,
                    fontWeight: FontWeight.w400,
                    onTap: () {},
                    size: Size(Get.width * 0.4, 43),
                    textColor: primaryFontColor2,
                    title: '취소',
                  ),
                  CustomButton(
                    borderSide: BorderSide.none,
                    buttonColor: primaryColor,
                    fontsize: 14,
                    fontWeight: FontWeight.w700,
                    onTap: () {
                      _.saveResultButton.value = !_.saveResultButton.value;
                      print(_.saveResultButton.value);
                    },
                    size: Size(Get.width * 0.4, 43),
                    textColor: whiteColor,
                    title: '선택 저장',
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

resultBox({String? title, String? subtitle, FontWeight? fontWeight}) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
    child: Row(
      children: [
        Container(
          height: 25,
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(2)),
          padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
          margin: EdgeInsets.only(right: 5),
          child: Text(
            title!,
            style: TextStyle(color: whiteColor, fontSize: 12),
          ),
        ),
        Text(
          subtitle!,
          style: TextStyle(fontSize: 14, fontWeight: fontWeight),
        ),
      ],
    ),
  );
}

smallBoxLine({String? title}) {
  return Container(
    height: 25,
    decoration: BoxDecoration(
        color: Color(0xFFFAFDFF),
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: Color(0xFFC7E7FC))),
    padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
    margin: EdgeInsets.only(right: 5),
    child: Text(
      title!,
      style: TextStyle(color: selectFontColor, fontSize: 12),
    ),
  );
}
