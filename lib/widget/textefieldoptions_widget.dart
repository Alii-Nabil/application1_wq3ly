import 'package:application_wq3ly/widget/textmessageoptions.dart';
import 'package:application_wq3ly/widget/texxtfield_login.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextefieldoptionsWidget extends StatefulWidget {
  final String Text;
  final TextStyle titleTextStyle;

  const TextefieldoptionsWidget({
    super.key,
    required this.Text,
    required this.titleTextStyle,
  });

  @override
  State<TextefieldoptionsWidget> createState() =>
      _TextefieldoptionsWidgetState();
}

class _TextefieldoptionsWidgetState extends State<TextefieldoptionsWidget> {
  bool _showTextField = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60.h,
            width: 342.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfffE5E5E5),
              border: Border.all(
                color: Color(0xfffA8A8A8),
                width: 0.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.Text,
                    style: widget.titleTextStyle,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _showTextField = !_showTextField;
                      });
                    },
                    icon: Icon(
                      _showTextField
                          ? Icons.keyboard_arrow_up_sharp
                          : Icons.keyboard_arrow_down_sharp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (_showTextField) ...[
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Subject (Optional)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFourmfield(
                    hintText: "",
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "Message (Optional)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextMessageOptions(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "You can use the following variables in your message:",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xfffA3A3A3),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "{signer.name} ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            " - The signer's name ",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfffA3A3A3),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "{signer.email}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            " - The signer's email",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfffA3A3A3),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "{document.name}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            " - The document's name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfffA3A3A3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
