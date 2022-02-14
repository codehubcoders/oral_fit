import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/order_ditail.dart';

class ShadeBox extends GetView {
  const ShadeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '쉐이드',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      alignment: Alignment.center,
                      width: Get.width,
                      height: 44,
                      decoration: BoxDecoration(
                          color: Color(0xFFF9F9F9),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'VITA classical  /  A1',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '쉐이드 이미지',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {},
                          child: smallBox(
                              bgColor: whiteColor,
                              title: '쉐이드 등록하기',
                              fontColor: primaryColor,
                              border: primaryColor),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    EditDateBox()
                  ])),
          Divider(
            color: Color(0xFFF6F6F6),
            thickness: 10,
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '구강 스캔 파일(STL)',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  Text(
                    '스캔파일 업로드(PC에서 확인)',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )),
          Divider(
            color: Color(0xFFF6F6F6),
            thickness: 10,
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(15, 10, 15, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '기타 전달사항',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  Text(
                    '내용 없음',
                    style: TextStyle(fontSize: 14, color: greySubLiteColor9),
                  ),
                  Text(
                    '통화요청 / 디자인 컨펌요청',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              )),
        ],
      ),
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
        childAspectRatio: 1 / 1,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        children: List.generate(4, (index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: greyLiteColorD),
                  image: DecorationImage(
                    image: AssetImage('assets/images/shadeimg.png'),
                    fit: BoxFit.fill,
                  )),
            ),
          );
        }));
  }
}
