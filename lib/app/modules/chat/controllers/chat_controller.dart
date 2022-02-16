import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ChatController extends GetxController {
  PickedFile? image;
  Future getImageFromCam() async {
    var image =
        await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    image = image;
  }

  final chatListInt = 0.obs;

  final isCurrentUser = false;

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

  final message = [{}].obs;
}
