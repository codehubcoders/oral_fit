import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/theme_data.dart';
import '../../controllers/home_step02_controller.dart';

void selectToothNumber(BuildContext context) {
  final _ = Get.find<HomeStep02Controller>();
  showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: Get.height * 0.52,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' 치식번호 선택',
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
                      GridView.count(
                        shrinkWrap: true,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1 / 1.1,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 8,
                        children: List.generate(
                            toothNumberList.length,
                            (index) => Column(
                                  children: [
                                    Text(
                                      toothNumberList[index],
                                      textAlign: TextAlign.center,
                                    ),
                                    Obx(() => GestureDetector(
                                        onTap: () {
                                          toothNumber.value = index;
                                        },
                                        child: toothNumber.value == index
                                            ? Container(
                                                width: 30,
                                                height: 30,
                                                child: Image.asset(
                                                  'assets/images/single.png',
                                                  width: 25,
                                                ),
                                              )
                                            : Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        right: BorderSide(
                                                            color:
                                                                greyLiteColorD),
                                                        bottom: BorderSide(
                                                            color:
                                                                greyLiteColorD))),
                                              ))),
                                  ],
                                )),
                      )
                    ]),
              ),
              GestureDetector(
                  onTap: () {
                    Get.back();
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

final toothNumberList = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
  '24',
  '23',
  '22',
  '21',
  '20',
  '19',
  '18',
  '17',
  '32',
  '31',
  '30',
  '29',
  '28',
  '27',
  '26',
  '25',
].obs;
final toothNumber = 0.obs;
