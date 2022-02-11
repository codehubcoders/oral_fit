import 'package:get/get.dart';

import '../controllers/home_step02_controller.dart';

class HomeStep02Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeStep02Controller>(
      () => HomeStep02Controller(),
    );
  }
}
