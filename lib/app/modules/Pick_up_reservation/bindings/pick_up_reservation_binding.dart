import 'package:get/get.dart';

import '../controllers/pick_up_reservation_controller.dart';

class PickUpReservationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PickUpReservationController>(
      () => PickUpReservationController(),
    );
  }
}
