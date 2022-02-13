import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_step03_controller.dart';

enum RadioImg { Null, Kakao, Email, ScanFile }

class RadioButtonImg extends GetView {
  final _ = Get.find<HomeStep03Controller>();
  RadioImg imgValue = RadioImg.Null;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RadioListTile(
              value: RadioImg.Null,
              groupValue: RadioImg,
              onChanged: (RadioImg) {})
        ],
      ),
    );
  }
}
