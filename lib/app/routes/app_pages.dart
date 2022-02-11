import 'package:get/get.dart';

import '../modules/alarm/bindings/alarm_binding.dart';
import '../modules/alarm/views/alarm_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home_step02/bindings/home_step02_binding.dart';
import '../modules/home_step02/views/home_step02_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigationbar/bindings/navigationbar_binding.dart';
import '../modules/navigationbar/views/navigationbar_view.dart';
import '../modules/order_list/bindings/order_list_binding.dart';
import '../modules/order_list/views/order_list_view.dart';
import '../modules/splash-screen/bindings/splash_screen_binding.dart';
import '../modules/splash-screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATIONBAR,
      page: () => NavigationbarView(),
      binding: NavigationbarBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_LIST,
      page: () => OrderListView(),
      binding: OrderListBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.ALARM,
      page: () => AlarmView(),
      binding: AlarmBinding(),
    ),
    GetPage(
      name: _Paths.HOME_STEP02,
      page: () => HomeStep02View(),
      binding: HomeStep02Binding(),
    ),
  ];
}
