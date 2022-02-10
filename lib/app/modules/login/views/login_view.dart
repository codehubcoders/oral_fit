import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/keys.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';
import 'package:oral_fit/app/global_widget/custom_button.dart';

import '../../../global_widget/textform_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<LoginController>(() => LoginController());
    final _ = Get.find<LoginController>();

    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Form(
          key: loginKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  logoImage,
                  width: 112,
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, Get.height / 20, 0, 0),
                    width: Get.width * 0.85,
                    child: Column(children: [
                      TextFormWidget(
                        hitText: '아이디',
                        fontsize: 16,
                        obscure: false,
                        inputController: _.loginIdCtl,
                        onSaved: (val) {},
                        validator: (val) {
                          if (val!.isEmpty) {
                            return '아이디를 입력 해 주세요';
                          }
                          if (val.length < 2) {
                            return '아이디는 2자리 이상입니다';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormWidget(
                        hitText: '비밀번호',
                        fontsize: 16,
                        obscure: true,
                        inputController: _.loginPassCtl,
                        onSaved: (val) {},
                        validator: (val) {
                          if (val!.isEmpty) {
                            return '비밀번호를 입력 해 주세요';
                          } else {
                            Pattern pattern =
                                r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?~^<>,.&+=])[A-Za-z\d$@$!%*#?~^<>,.&+=]{6,15}$';
                            RegExp regExp = RegExp(pattern as String);
                            if (!regExp.hasMatch(val)) {
                              return '비밀번호가 다릅니다';
                            } else {
                              return null;
                            }
                          }
                        },
                      ),
                    ])),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Transform.scale(
                          scale: 1.1,
                          child: Obx(() => Checkbox(
                                side: BorderSide(
                                  color: Color(0xFF0B82C6),
                                  width: 2,
                                ),
                                activeColor: primaryColor,
                                checkColor: whiteColor,
                                value: _.loginCheckBox.value,
                                onChanged: (value) {
                                  _.loginCheckBox.value = value!;
                                },
                              ))),
                      Text(
                        '로그인 상태 유지',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: Get.width * 0.85,
                  margin: EdgeInsets.only(bottom: 30),
                  child: CustomButton(
                    onTap: _.login,
                    buttonColor: primaryColor,
                    fontsize: 16,
                    textColor: whiteColor,
                    title: '로그인',
                    size: Size(Get.width, 54),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('아이디/비밀번호 찾기',
                        style:
                            TextStyle(color: greySubLiteColor9, fontSize: 14)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
