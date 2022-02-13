import 'package:get/get.dart';

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
}
