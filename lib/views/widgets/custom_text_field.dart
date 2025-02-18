import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
    this.onSaved,

  });

  final String hintText;
  final int maxLine;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 14),
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
