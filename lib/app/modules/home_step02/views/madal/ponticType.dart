import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/modules/home_step02/views/madal/select_tooth_number.dart';

import '../../../../core/theme/theme_data.dart';
import '../../controllers/home_step02_controller.dart';

void ponticType(BuildContext context) {
  final _ = Get.find<HomeStep02Controller>();
  showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: Get.height * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' 폰틱 타입',
                          style: TextStyle(
                              color: greyDarkColor5,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
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
                    SizedBox(height: 10),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _.ponticList.length,
                      itemBuilder: (context, index) {
                        return Obx(() => GestureDetector(
                            onTap: () {
                              _.ponticModal.value = index;
                            },
                            child: _.ponticModal.value == index
                                ? Container(
                                    height: 45,
                                    margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                    padding:
                                        EdgeInsets.only(right: 10, left: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: primaryLiteColor,
                                      border:
                                          Border.all(color: selectFontColor),
                                    ),
                                    child: ListTile(
                                      dense: true,
                                      contentPadding: EdgeInsets.all(0),
                                      title: Text(
                                        _.ponticList[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 18,
                                      ),
                                      iconColor: greySubLiteColor9,
                                      textColor: primaryColor,
                                    ))
                                : Container(
                                    height: 45,
                                    margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                    padding:
                                        EdgeInsets.only(right: 10, left: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: whiteColor,
                                      border: Border.all(color: greyLiteColorD),
                                    ),
                                    child: ListTile(
                                      dense: true,
                                      contentPadding: EdgeInsets.all(0),
                                      title: Text(
                                        _.ponticList[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 18,
                                      ),
                                      iconColor: greySubLiteColor9,
                                      textColor: greyDarkColor5,
                                    ))));
                      },
                    ),
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Get.back();
                    selectToothNumber(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width,
                    height: 54,
                    color: primaryColor,
                    child: Text(
                      '선택완료',
                      style: TextStyle(color: whiteColor, fontSize: 16),
                    ),
                  ))
            ],
          ),
        );
      });
}
