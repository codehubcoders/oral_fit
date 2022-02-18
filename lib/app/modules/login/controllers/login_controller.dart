import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oral_fit/app/core/theme/keys.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/data/services/user_service.dart';

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

  Future<void> login() async {
    if (loginKey.currentState!.validate()) {
      final userService = Get.find<UserService>();

      final userId = loginIdCtl.text.trim();
      final password = loginPassCtl.text.trim();

      try {
        await userService.signIn(userId, password);

        final box = GetStorage();
        if (loginCheckBox.value) {
          await box.write('loginUserId', userId);
          await box.write('loginPass', password);
        } else {
          box.remove('loginUserId');
          box.remove('loginPass');
        }

        Get.snackbar('로그인', '로그인 되었습니다.', backgroundColor: whiteColor);
        Get.offAllNamed('/navigationbar');
      } on String catch (e) {
        Get.snackbar('오류', e);
      }
    }
  }
}
