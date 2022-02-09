import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logoImage,
            width: 112,
          ),
        ],
      )),
    );
  }
}
