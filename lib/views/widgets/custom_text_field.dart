import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.onChanged,
    this.keyboardType,
    this.onTapSuffixIcon,
    this.obscureText = false,
    this.contentPadding = 16,

  });

  final String hintText;
  final String labelText;
  Function(String) onChanged;
  TextInputType? keyboardType;
  VoidCallback? onTapSuffixIcon;
  bool? obscureText;
  double contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: null,
      onChanged: onChanged,
      obscureText: obscureText!,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: contentPadding, horizontal: 14),
        hintText: hintText,
        hintStyle: TextStyle(
          color: kPrimaryColor,
          fontSize: 10,
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          color: kPrimaryColor,
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
