import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/design_box.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/madal/work_history.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/orderinfo_box.dart';
import 'package:oral_fit/app/modules/order_list/views/order_detail/shade_box.dart';

import '../../controllers/order_list_controller.dart';

class OrderDetail extends GetView {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _ = Get.find<OrderListController>();
    return Scaffold(
      backgroundColor: whiteColor,
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
          '주문상세',
          style: TextStyle(fontSize: 18, color: greyLiteColorD),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '주문정보',
                              style: TextStyle(
                                  color: greyDarkColor3,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 5),
                            smallBox(
                                bgColor: orengeColor,
                                title: '컨펌요청',
                                fontColor: whiteColor,
                                border: Colors.transparent),
                            smallBox(
                                bgColor: orengeColor,
                                title: '통화요청',
                                fontColor: whiteColor,
                                border: Colors.transparent)
                          ],
                        ),
                        GestureDetector(
                            onTap: () => workHistory(),
                            child: smallBox(
                                bgColor: whiteColor,
                                title: '작업내역보기',
                                fontColor: greyDarkColor3,
                                border: greyLiteColorD)),
                      ],
                    ),
                    SizedBox(height: 20),
                    OrderInfoBox(),
                    SizedBox(height: 10),
                    Text(
                      "'의료기사등에 관한 법률' 제11조의3 및 같은법 시행규칙 제12조의4 제1항에 따라 아래와 같이 제작을 의뢰합니다.'",
                      style: TextStyle(fontSize: 10, color: greySubLiteColor9),
                    )
                  ],
                ),
              ),
              Divider(
                color: Color(0xFFF6F6F6),
                thickness: 10,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '디자인',
                          style: TextStyle(color: Colors.transparent),
                        ),
                        Text(
                          '디자인',
                          style: TextStyle(
                              color: orengeColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                        smallBox(
                            bgColor: whiteColor,
                            title: '골드보기',
                            fontColor: greyDarkColor3,
                            border: greyLiteColorD)
                      ],
                    ),
                    SizedBox(height: 20),
                    DesignBox()
                  ],
                ),
              ),
              Divider(
                color: Color(0xFFF6F6F6),
                thickness: 10,
              ),
              ShadeBox(),
            ],
          ),
        ),
      ),
    );
  }
}

smallBox(
    {String? title, Color? fontColor, Color? bgColor, required Color border}) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: border),
          color: bgColor,
          borderRadius: BorderRadius.circular(2)),
      padding: EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
      margin: EdgeInsets.only(right: 5),
      child: Text(
        title!,
        style: TextStyle(color: fontColor, fontSize: 12),
      ),
    ),
  );
}
