import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView {
  final Color buttonColor;
  final String title;
  final Color textColor;
  final void Function()? onTap;
  final double fontsize;
  final Size size;
  final FontWeight fontWeight;

  const CustomButton({
    Key? key,
    required this.fontWeight,
    required this.buttonColor,
    required this.size,
    required this.title,
    required this.textColor,
    required this.onTap,
    required this.fontsize,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontsize, color: textColor, fontWeight: fontWeight),
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: size,
          primary: buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          elevation: 0.0),
    );
  }
}
