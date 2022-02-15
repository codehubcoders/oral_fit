import 'package:get/get.dart';

class PickUpReservationController extends GetxController {
  final timeValue = 0.obs;
  final selectedDate = ''.obs;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
