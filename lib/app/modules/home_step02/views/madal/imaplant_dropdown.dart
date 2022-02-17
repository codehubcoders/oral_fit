import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/theme_data.dart';

class ImplantCrownDropDown extends GetView {
  final Widget dropdown;

  ImplantCrownDropDown({
    required this.dropdown,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 43,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: greyLiteColorD)),
        child: dropdown);
  }
}
