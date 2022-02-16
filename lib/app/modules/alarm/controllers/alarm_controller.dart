import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AlarmController extends GetxController {
  PickedFile? image;
  Future getImageFromCam() async {
    var image =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    image = image;
  }

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
