import 'package:flutter/material.dart';

import '../core/theme/theme_data.dart';

class TextFormWidget extends StatelessWidget {
  final String hitText;
  const TextFormWidget({Key? key, required this.hitText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 13),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 10, 15),
            isDense: true,
            fillColor: whiteColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            hintText: hitText),
        keyboardType: TextInputType.text);
  }
}
