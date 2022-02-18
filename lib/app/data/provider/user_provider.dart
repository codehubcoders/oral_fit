import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get_storage/get_storage.dart';

import '../model/tokens.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://restapi.oralfit.co.kr/user';

    httpClient.addRequestModifier((Request request) {
      final box = GetStorage();
      final String accessToken = box.read('accessToken') ?? '';
      if (accessToken.isNotEmpty) {
        request.headers['Authorization'] = accessToken;
      }
      return request;
    });

    httpClient.addAuthenticator((Request request) async {
      final box = GetStorage();
      final String refreshToken = box.read('refreshToken') ?? '';
      if (refreshToken.isNotEmpty) {
        final response = await get('https://restapi.oralfit.co.kr/user/refresh', headers: {'Authorization': refreshToken});
        final accessToken = response.body['accessToken'];

        request.headers['Authorization'] = accessToken;
      }

      return request;
    });

    httpClient.maxAuthRetries = 3;
  }

  Future<Tokens> signIn(Map data) => post('/signIn', data).then((value) => Tokens.fromJson(value.body));
}
