import 'package:get/get.dart';

import '../controllers/home_step03_controller.dart';

class HomeStep03Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeStep03Controller>(
      () => HomeStep03Controller(),
    );
  }
}
