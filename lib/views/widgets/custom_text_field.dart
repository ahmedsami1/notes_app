import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.keyboardType,
    this.onTapSuffixIcon,
    this.obscureText = false,
    this.contentPadding = 16,
    this.maxLine = 1,

  });

  final String hintText;
  Function(String) onChanged;
  TextInputType? keyboardType;
  VoidCallback? onTapSuffixIcon;
  bool? obscureText;
  double contentPadding;
  int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      onChanged: onChanged,
      obscureText: obscureText!,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: contentPadding, horizontal: 14),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 10,
        ),
        fillColor: Colors.grey.shade900,
        filled: true,
        enabledBorder: buildBorder(color: Colors.white),
        focusedBorder: buildBorder(color: kPrimaryColor),
        errorBorder: buildBorder(color: Colors.red),
      ),
    );
  }

  OutlineInputBorder buildBorder({required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: color,
        ),
      );
  }
}
