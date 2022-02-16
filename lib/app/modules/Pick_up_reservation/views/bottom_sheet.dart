import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:oral_fit/app/modules/Pick_up_reservation/controllers/pick_up_reservation_controller.dart';

import '../../../core/theme/theme_data.dart';

bottomSheet(BuildContext context) {
  final _ = Get.find<PickUpReservationController>();
  return GestureDetector(
    onTap: () {
      showModalBottomSheet<void>(
          isScrollControlled: true,
          backgroundColor: whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                height: Get.height * 0.6,
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
                                '수거요청',
                                style: TextStyle(
                                    color: greyDarkColor5,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
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
                          SizedBox(height: 15),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: greyLiteColorD)),
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                hintText: '기공소 검색 및 선택',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: greyLiteColorD),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          Obx(() => GestureDetector(
                                onTap: () {
                                  Future<DateTime?> selectedDate =
                                      showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime(2100));

                                  selectedDate.then((dateTime) {
                                    _.selectedDate.value =
                                        DateFormat('yyyy/MM/dd')
                                            .format(dateTime as DateTime)
                                            .toString();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border:
                                          Border.all(color: greyLiteColorD)),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: Get.width * 0.75,
                                        child: _.selectedDate.value == ''
                                            ? Text(
                                                '날짜 선택',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: greyLiteColorD),
                                              )
                                            : Text(_.selectedDate.value),
                                      ),
                                      Icon(Icons.event, color: greyLiteColorD),
                                    ],
                                  ),
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              selectTimeButton(
                                  '오전',
                                  0,
                                  BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8))),
                              selectTimeButton(
                                  '오후',
                                  1,
                                  BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8)))
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 140,
                            child: TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.top,
                              expands: true,
                              maxLines: null,
                              autofocus: true,
                              decoration: InputDecoration(
                                isDense: true,
                                hintStyle: TextStyle(
                                    color: greySubLiteColor9, fontSize: 14),
                                hintText: '수거요청 메모',
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      width: 1, color: greyLiteColorD),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide: BorderSide(
                                      width: 1, color: greyLiteColorD),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                              ),
                              keyboardType: TextInputType.multiline,
                            ),
                          ),
                        ],
                      ),
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
                            '완료',
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ))
                  ],
                ),
              ),
            );
          });
    },
    child: Container(
        alignment: Alignment.center,
        width: Get.width,
        color: primaryColor,
        height: 68,
        child: Text(
          '수거요청',
          style: TextStyle(
              fontSize: 16, color: whiteColor, fontWeight: FontWeight.w700),
        )),
  );
}

Widget selectTimeButton(String text, int index, BorderRadius borderRadius) {
  final _ = Get.find<PickUpReservationController>();
  return Obx(() => GestureDetector(
        onTap: () {
          _.timeValue.value = index;
        },
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: Get.width * 0.44,
              height: 36,
              decoration: BoxDecoration(
                  color:
                      (_.timeValue.value == index) ? primaryColor : whiteColor,
                  borderRadius: borderRadius,
                  border: Border.all(color: primaryColor)),
              child: Text(
                text,
                style: TextStyle(
                    color: (_.timeValue.value == index)
                        ? whiteColor
                        : primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ));
}
