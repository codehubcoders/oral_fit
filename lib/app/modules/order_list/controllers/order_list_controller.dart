import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:qrscan/qrscan.dart' as scanner;

class OrderListController extends GetxController {
  List shadeImgList = [
    'assets/images/shadeimg.png',
    'assets/images/shadeimg.png',
    'assets/images/shadeimg.png'
  ];
  Future<bool> requestPermission() async {
    Map<Permission, PermissionStatus> statues =
        await [Permission.storage, Permission.camera].request();

    if (statues[Permission.storage] == PermissionStatus.granted &&
        statues[Permission.camera] == PermissionStatus.granted) {
      return true;
    } else {
      return false;
    }
  }

  Future scan() async {
    await requestPermission();
    await scanner.scan();
  }

  final searchInput = TextEditingController();
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

  final dropdownName = '검색 및 선택'.obs;
  final dropdownNameList = ['검색 및 선택', '기공소명'].obs;

  final dropdownCrown = '검색 및 선택'.obs;
  final dropdownCrownList = ['검색 및 선택', '크라운'].obs;

  final orderTypeList = ['전체', '신규주문', 'Remake', 'Refair'].obs;
  final orderTypeInt = 0.obs;

  final requestList = ['전체', '러버인상', '스캔파일'].obs;
  final requestpeInt = 0.obs;

  final stateList = [
    '전체',
    '접수대기',
    '작업대기',
    '모델',
    '스캔',
    '디자인',
    '가공',
    '적합',
    '배송준비중',
    '발송완료'
  ].obs;
  final stateeInt = 0.obs;
}
