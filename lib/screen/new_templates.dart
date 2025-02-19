import 'package:application_wq3ly/screen/new_templates_2.dart';
import 'package:application_wq3ly/widget/bottom_navigationbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewTemplates extends StatefulWidget {
  const NewTemplates({super.key});

  @override
  State<NewTemplates> createState() => _NewTemplatesState();
}

class _NewTemplatesState extends State<NewTemplates> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0XFFFE4F3DD),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Container(
                            width: 120.w,
                            height: 36.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(50),
                              ),
                              border: Border.all(
                                color: Color(0XFFF7AC455),
                                width: 0.5.w,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "User Name",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0XFFF262626)),
                                  ),
                                  Text(
                                    "Personal Account",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0XFFFA3A3A3)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          child: Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                "TK",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFA3A3A3),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "WQ3LY",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 85,
                ),
                Icon(
                  Icons.search,
                  color: Color(0XFFF7AC455),
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 7, left: 5),
                    child: Container(
                      height: 32,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        "assets/image/bell-notification-social-media.png",
                      ))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Templates",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFF262626)),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              title: Container(
                                height: 390,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "New tTemplate",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Container(
                                              height: 30.h,
                                              width: 30.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0xFFF96D766),
                                                      blurRadius: 4,
                                                    )
                                                  ],
                                                  color: Color(0xFFE4F3DD),
                                                  border: Border.all(
                                                    width: 2,
                                                    color: Color(0xFFF96D766),
                                                  )),
                                              child: Image.asset(
                                                  "assets/icon/cross.png"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                      "Templates allow you to quickly generate\n documents with pre-filled recipients and fields.",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0XFFFA3A3A3)),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      width: 355.w,
                                      height: 250.h,
                                      decoration: BoxDecoration(
                                          color: Color(0xfffFFFFFF),
                                          border: Border.all(
                                            color: Color(0xfffA8A8A8),
                                            width: 1.5.w,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0XFFFA8A8A8),
                                              // spreadRadius: 0,
                                              blurRadius: 8,
                                              // offset: Offset(2, 0)
                                            )
                                          ]),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return NewTemplates2();
                                                }));
                                              },
                                              child: Text(
                                                "Upload Template Document",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xfffA3A3A3)),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0),
                                            child: Text(
                                              "Tap here to upload your document.",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xfffD4D4D4)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Container(
                                        height: 55.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xfffe5e5e5),
                                            border: Border.all(
                                              color: Color(0xfffA8A8A8),
                                              width: 0.5.w,
                                            )),
                                        child: Center(
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ));
                  },
                  child: Container(
                      height: 55.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfffA2E771),
                          border: Border.all(
                            color: Color(0xfffA8A8A8),
                            width: 0.5.w,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icon/new-document.png"),
                          Text(
                            "New Template",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 2.h,
                  width: double.infinity,
                  color: Color(0XFFFE5E5E5),
                ),
                SizedBox(
                  height: 120.h,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icon/bird (1).png"),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "We're all empty",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFFD4D4D4),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "You have not yet created any templates.\n To create a template please upload one.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFFFD4D4D4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
