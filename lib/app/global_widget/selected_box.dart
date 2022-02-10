import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectedBox extends GetView {
  final double width;
  final String title;
  final Color borderColor;
  final Color fontColor;
  final Color bgColor;
  final double fonsSize;

  SelectedBox(
      {required this.width,
      required this.title,
      required this.borderColor,
      required this.fontColor,
      required this.bgColor,
      required this.fonsSize});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: borderColor),
          color: bgColor),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: fontColor, fontSize: fonsSize, fontWeight: FontWeight.w700),
      ),
    );
  }
}
