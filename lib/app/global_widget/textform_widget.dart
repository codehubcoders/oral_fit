import 'package:flutter/material.dart';

import '../core/theme/theme_data.dart';

class TextFormWidget extends StatelessWidget {
  final TextEditingController inputController;
  final FormFieldSetter onSaved;
  final FormFieldValidator validator;
  final TextInputType? keyboardType;
  final String hitText;
  final double fontsize;
  final bool obscure;

  const TextFormWidget(
      {Key? key,
      required this.hitText,
      required this.inputController,
      required this.onSaved,
      required this.validator,
      this.keyboardType,
      required this.fontsize,
      required this.obscure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      validator: validator,
      onSaved: onSaved,
      controller: inputController,
      decoration: InputDecoration(
        hintStyle: TextStyle(
            fontSize: fontsize, color: primaryFontColor2.withOpacity(0.4)),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 10, 15),
        isDense: true,
        fillColor: whiteColor,
        filled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryFontColor2.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryFontColor2.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryFontColor2.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryFontColor2),
            borderRadius: BorderRadius.circular(12)),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
        hintText: hitText,
      ),
    );
  }
}
