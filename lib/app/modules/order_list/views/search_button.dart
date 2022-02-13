import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oral_fit/app/core/theme/theme_data.dart';

class SearchButton extends GetView {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          width: 62,
          height: 32,
          decoration: BoxDecoration(
              color: Color(0xFFEDF8FF),
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '검색',
                  style: TextStyle(color: primaryColor, fontSize: 12),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 22,
                )
              ]),
        ));
  }
}
