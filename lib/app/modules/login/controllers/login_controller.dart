import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oral_fit/app/core/theme/keys.dart';

class LoginController extends GetxController {
  final loginIdCtl = TextEditingController();
  final loginPassCtl = TextEditingController();
  final loginCheckBox = true.obs;
  final box = GetStorage();

  @override
  void onInit() async {
    super.onInit();
    loginIdCtl.text = box.read('loginUserId');
    loginPassCtl.text = box.read('loginPass');
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
      final userId = loginIdCtl.text.trim();
      final userPass = loginPassCtl.text.trim();

      if (!loginCheckBox.value) {
        await box.write('loginUserId', userId);
        await box.write('loginPass', userPass);
      } else {
        box.remove('loginUserId');
        box.remove('loginPass');
      }
    }
  }
}
