import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/core/theme/theme_data.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  await GetStorage.init();

  runApp(
    GetMaterialApp(
      title: "ORAL FIT",
      initialRoute: AppPages.INITIAL,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ko', 'KR'),
      ],
      locale: Get.deviceLocale,
      getPages: AppPages.routes,
      debugShowMaterialGrid: false,
      theme: ThemeData(
          fontFamily: primaryFont,
          backgroundColor: whiteColor,
          primaryColor: primaryFontColor2),
    ),
  );
}
