import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oral_fit/app/core/theme/keys.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

class LoginController extends GetxController {
  final loginIdCtl = TextEditingController();
  final loginPassCtl = TextEditingController();
  final loginCheckBox = true.obs;

  @override
  void onInit() async {
    super.onInit();
    final box = GetStorage();
    loginIdCtl.text = box.read('loginUserId') ?? '';
    loginPassCtl.text = box.read('loginPass') ?? '';
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    loginIdCtl.dispose();
    loginPassCtl.dispose();
  }

  void login() async {
    if (loginKey.currentState!.validate()) {
      Get.snackbar('로그인', '로그인 되었습니다.', backgroundColor: whiteColor);
      Get.offAllNamed('/home');
      final box = GetStorage();
      final userId = loginIdCtl.text.trim();
      final userPass = loginPassCtl.text.trim();
      if (loginCheckBox.value) {
        await box.write('loginUserId', userId);
        await box.write('loginPass', userPass);
      } else {
        box.remove('loginUserId');
        box.remove('loginPass');
      }
    }
  }
}
