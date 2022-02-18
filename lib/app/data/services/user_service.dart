import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oral_fit/app/data/provider/user_provider.dart';

import '../model/tokens.dart';

class UserService extends GetxService {
  final tokens = Tokens().obs;

  final provider = Get.put(UserProvider());

  UserService init() {
    final box = GetStorage();
    final String accessToken = box.read('accessToken') ?? '';
    final String refreshToken = box.read('refreshToken') ?? '';
    if (accessToken.isNotEmpty) {
      tokens.value = Tokens(accessToken: accessToken, refreshToken: refreshToken);
    }

    return this;
  }
  
  Future<void> signIn(String userId, String password) async {
    final results = await provider.signIn({
      'userId': userId,
      'password': password,
    });
    if (results.accessToken == null || results.accessToken!.isEmpty) throw '로그인실패';
    tokens.value = results;

    final box = GetStorage();
    await box.write('accessToken', results.accessToken);
    await box.write('refreshToken', results.refreshToken);
  }
}