import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

class HomeStep03Controller extends GetxController {
  final dropdownValue01 = '쉐이드 종류01'.obs;
  final dropdownList01 = ['쉐이드 종류01', '쉐이드 종류01_01', '쉐이드 종류01_02'].obs;
  void dropdownOn01(String? value) => dropdownValue01.value = value!;
  final dropdownValue02 = '쉐이드 종류02'.obs;
  final dropdownList02 = ['쉐이드 종류02', '쉐이드 종류02_01', '쉐이드 종류02_02'].obs;
  void dropdownOn02(String? value) => dropdownValue02.value = value!;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  final checkCall = false.obs;
  final checkDesign = false.obs;

  final selectImg = ''.obs;
  final imgList = ['해당없음', '카카오톡 전송', '이메일 전송', '스캔파일 업로드'].obs;
  final selectImgValue = ''.obs;
  void onlickRadioButtonImg(value) {
    print(value);
    selectImgValue.value = value;
    update();
  }

  final otherInput = TextEditingController();

  final scanImg = ''.obs;
  final scanImgList = [
    '3Shape Communicate 업로드',
    'Medit Link',
    '스캔파일 업로드',
    '이메일 전송',
    '임프레션 수거요청',
    '임프레션 택배발송'
  ].obs;
  final scanImgValue = ''.obs;
  void onlickRadioButtonScanImg(value) {
    print(value);
    scanImgValue.value = value;
    update();
  }
}
