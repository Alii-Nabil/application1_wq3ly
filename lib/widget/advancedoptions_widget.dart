import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdvancedOptionsWidget extends StatefulWidget {
  final String Text;
  final TextStyle titleTextStyle;

  const AdvancedOptionsWidget({
    super.key,
    required this.Text,
    required this.titleTextStyle,
  });

  @override
  State<AdvancedOptionsWidget> createState() => _AdvancedOptionsWidgetState();
}

class _AdvancedOptionsWidgetState extends State<AdvancedOptionsWidget> {
  bool _showTextField = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text("External ID",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset("assets/icon/alert-sign.png")
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFourmfield(
                hintText: "",
              ),
              SizedBox(
                height: 10.h,
              ),
              Text("Date Format",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFourmfield(
                hintText: "YYYY-MM-DD HH:mm a+",
                hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xfffA3A3A3),
                    fontWeight: FontWeight.w400),
                suffixIcon: IconButton(
                    onPressed: () {
                      // showDialog(
                      //   context: context,
                      //   builder: (context) => AlertDialog(
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(5)),
                      //     title: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           "Document access",
                      //           style: TextStyle(
                      //             fontSize: 12,
                      //             fontWeight: FontWeight.w500,
                      //             color: Colors.black,
                      //           ),
                      //         ),
                      //         Text(
                      //           "The authentication required for recipients to view the document.",
                      //           style: TextStyle(
                      //             fontSize: 14,
                      //             fontWeight: FontWeight.w400,
                      //             color: Color(0xfffA3A3A3),
                      //           ),
                      //         ),
                      //         Text(
                      //           ". Require account - The recipient must be signed in to view the document\n . No restrictions - The document can be accessed directly by the URL sent to the recipient",
                      //           style: TextStyle(
                      //             fontSize: 12,
                      //             fontWeight: FontWeight.w500,
                      //             color: Colors.black,
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // );
                    },
                    icon: Icon(Icons.keyboard_arrow_down_sharp)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text("Time Zone",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFourmfield(
                hintText: "YYYY-MM-DD HH:mm a+",
                hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xfffA3A3A3),
                    fontWeight: FontWeight.w400),
                suffixIcon: IconButton(
                    onPressed: () {
                      // showDialog(
                      //   context: context,
                      //   builder: (context) => AlertDialog(
                      //     shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(5)),
                      //     title: Column(
                      //       crossAxisAlignment: CrossAxisAlignment.start,
                      //       children: [
                      //         Text(
                      //           "Document access",
                      //           style: TextStyle(
                      //             fontSize: 12,
                      //             fontWeight: FontWeight.w500,
                      //             color: Colors.black,
                      //           ),
                      //         ),
                      //         Text(
                      //           "The authentication required for recipients to view the document.",
                      //           style: TextStyle(
                      //             fontSize: 14,
                      //             fontWeight: FontWeight.w400,
                      //             color: Color(0xfffA3A3A3),
                      //           ),
                      //         ),
                      //         Text(
                      //           ". Require account - The recipient must be signed in to view the document\n . No restrictions - The document can be accessed directly by the URL sent to the recipient",
                      //           style: TextStyle(
                      //             fontSize: 12,
                      //             fontWeight: FontWeight.w500,
                      //             color: Colors.black,
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // );
                    },
                    icon: Icon(Icons.keyboard_arrow_down_sharp)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text("Redirect URL",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Image.asset("assets/icon/alert-sign.png"),
                ],
              ),
            ]),
          ),
        ],
      ]),
    );
  }
}
