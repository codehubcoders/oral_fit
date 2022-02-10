import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/alarm_controller.dart';

class AlarmView extends GetView<AlarmController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlarmView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AlarmView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
