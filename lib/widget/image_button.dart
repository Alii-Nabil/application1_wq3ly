import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageButton extends StatelessWidget {
  ImageButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      required this.buttonText,
      required this.textStyle,
      required this.onPressed});
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16.5),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            backgroundColor ?? Colors.green,
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          )),
          fixedSize: MaterialStateProperty.all(
            Size(
              buttonWidth?.w ?? double.maxFinite,
              buttonHeight ?? 58.h,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/098a20caba2529bc0b2b8e407325101c.png",
              height: 14,
              width: 14,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              buttonText,
              style: textStyle,
            ),
          ],
        ));
  }
}
