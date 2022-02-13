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
