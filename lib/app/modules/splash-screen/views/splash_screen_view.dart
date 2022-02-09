import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/modules/login/views/login_view.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: LoginView(),
      duration: 3000,
      imageSize: 152,
      imageSrc: logoImage,
      backgroundColor: primaryDarkColor,
    );
  }
}
