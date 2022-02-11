import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/modules/home_step02/views/home_step02_view.dart';

class HomeController extends GetxController {
  final selectedIndex01 = 0.obs;
  final step01_01 = ['오랄핏\n온라인 의뢰서', '종이 의뢰서'].obs;

  final selectedIndex03 = 0.obs;
  final step01_03 = ['러버 임프레션', '구강 스캔파일\n(디지털인상)'].obs;

  final nameList = ['선택', '기공소1', '기공소2'];
  final selectedName = '선택'.obs;

  final doctorList = ['선택', '담당의사1'];
  final selectDoctor = '선택'.obs;

  final stepList = ['선택', '담당스텝1', '담당스탭2'];
  final selectStep = '선택'.obs;

  void selectName(String? value) => selectedName.value = value!;
  void selectedDoctor(String? value) => selectDoctor.value = value!;
  void selectedStep(String? value) => selectStep.value = value!;

  final genderValue = 0.obs;
  final timeValue = 0.obs;

  final userNameCtl = TextEditingController();
  final selectedDate = ''.obs;
  void nextStep02() {
    Get.toNamed('/home-step02');
    print(selectedIndex01.value);
    print(selectedName.value);
    print(selectedIndex03.value);
    print(userNameCtl.text.trim());
    print(genderValue.value);
    print(selectedDate.value);
    print(timeValue.value);
    print(selectDoctor.value);
    print(selectStep.value);
  }

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
}
