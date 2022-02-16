import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeStep02Controller extends GetxController {
  final step02Select01 = 0.obs;
  final step02_01 = ['신규주문', 'Remake', 'Refaire'].obs;

  final step02Select02 = 0.obs;
  final step02_02 = ['Single', 'Splint', 'Bridge'].obs;
  final step02_02img = [
    Image.asset('assets/images/single.png', width: 25),
    Image.asset('assets/images/splint.png', width: 50),
    Image.asset('assets/images/bridge.png', width: 75),
  ].obs;

  final step02Select03 = 0.obs;
  final step02_03 = ['임플란트\n크라운', '지대치 프렙\n크라운/인레이'].obs;

  final saveResultButton = true.obs;

  final ponticModal = 0.obs;
  final ponticList = [
    'Modified Ridge Lap',
    'Saddle Ridge Lap',
    'Ovate',
    'Conical',
    'Sanitary / Hygienic'
  ].obs;
  final implant01 = 0.obs;
  final implant02 = 0.obs;
  final implant03 = 0.obs;
  final crackCrown = 0.obs;

  final dropDownList01 = [
    '커스텀 어버트먼트',
    // '커스텀 어버트먼트1',
    // '커스텀 어버트먼트2'
  ].obs;
  final dropDown01 = '커스텀 어버트먼트'.obs;
  void dropDownOn01(String? value) async => dropDown01.value = value!;

  final dropDownList02 = [
    '임플란트 브랜드(시스템)',
    // '임플란트 브랜드(시스템)1',
    // '임플란트 브랜드(시스템)2'
  ].obs;
  final dropDown02 = '임플란트 브랜드(시스템)'.obs;
  void dropDownOn02(String? value) async => dropDown02.value = value!;

  final dropDownList03 = [
    '직경',
    // '직경1',
    // '직경2'
  ].obs;
  final dropDown03 = '직경'.obs;
  void dropDownOn03(String? value) async => dropDown03.value = value!;

  final dropDownList04 = [
    '잇몸높이',
    // '잇몸높이1',
    // '잇몸높이2'
  ].obs;
  final dropDown04 = '잇몸높이'.obs;
  void dropDownOn04(String? value) async => dropDown04.value = value!;

  final dropDownList05 = [
    '임플란트 크라운 유지방법',
    // '임플란트 크라운 유지방법1',
    // '임플란트 크라운 유지방법2'
  ].obs;
  final dropDown05 = '임플란트 크라운 유지방법'.obs;
  void dropDownOn05(String? value) async => dropDown05.value = value!;

  final dropDownList06 = [
    '임플란트 크라운 타입',
    // '임플란트 크라운 타입1',
    // '임플란트 크라운 타입2'
  ].obs;
  final dropDown06 = '임플란트 크라운 타입'.obs;
  void dropDownOn06(String? value) async => dropDown05.value = value!;

  final crackList = [
    'Solid Zirconia Crown',
    // 'Solid Zirconia Crown1',
    // 'Solid Zirconia Crown2'
  ].obs;

  final crackdropDown = 'Solid Zirconia Crown'.obs;
  void crackdropDownOn(String? value) => dropDown01.value = value!;

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
