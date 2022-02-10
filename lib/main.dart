import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "ORAL FIT",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme:
          ThemeData(fontFamily: primaryFont, primaryColor: primaryFontColor2),
    ),
  );
}
