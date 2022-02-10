import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../../navigationbar/views/navigationbar_view.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: NavigationbarView(),
      duration: 3000,
      imageSize: 152,
      imageSrc: logoImage,
      backgroundColor: primaryDarkColor,
    );
  }
}
