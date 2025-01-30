import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFourmfield extends StatelessWidget {
  CustomTextFourmfield(
      {super.key,
      this.contentPadding,
      this.focuseiBorder,
      this.enableiBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon});

  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focuseiBorder;
  final InputBorder? enableiBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfffFFFFFF),
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
        focusedBorder: focuseiBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10)),
        enabledBorder: enableiBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10)),
        hintStyle: hintStyle ??
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyle(fontSize: 14, color: Colors.black),
    );
  }
}
