import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final bool isPassword;
  final String? Function(String?)? validator;
  final String hintText;
  const CustomTextField(
      {Key? key,
      required this.isPassword,
      this.validator,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: isPassword,
        validator: validator,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            fillColor: const Color(0xfff3f3f4),
            filled: true));
  }
}
