import 'dart:ffi';

import 'package:application_wq3ly/main.dart';
import 'package:application_wq3ly/screen/documents_screen.dart';
import 'package:application_wq3ly/widget/notifications_widget.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareScreen extends StatefulWidget {
  @override
  State<ShareScreen> createState() => _ShareScreenState();
}

class _ShareScreenState extends State<ShareScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFFAFAFA),
        elevation: 3,
        actions: [
          Container(
            height: 25.h,
            width: 25.w,
            decoration: BoxDecoration(
                color: Color(0xfffFFFFFF),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              "5",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA3A3A3)),
            )),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return NotificationsWidget();
              }));
              // showDialog(
              //     context: context,
              //     builder: (context) => AlertDialog(
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(5)),
              //         title: Column(
              //           children: [
              //             Row(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text(
              //                   "Notifications",
              //                   style: TextStyle(
              //                     fontSize: 16,
              //                     fontWeight: FontWeight.w600,
              //                     color: Colors.black,
              //                   ),
              //                 ),
              //                 InkWell(
              //                   onTap: () {
              //                     Navigator.of(context).push(
              //                         MaterialPageRoute(builder: (context) {
              //                       return DocumentsScreen();
              //                     }));
              //                   },
              //                   child: Container(
              //                     // margin: EdgeInsets.all(8),
              //                     height: 30.h,
              //                     width: 30.w,
              //                     decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(5),
              //                         boxShadow: [
              //                           BoxShadow(
              //                             color: Color(0xFFF96D766),
              //                             blurRadius: 4,
              //                           )
              //                         ],
              //                         color: Color(0xFFE4F3DD),
              //                         border: Border.all(
              //                           width: 2,
              //                           color: Color(0xFFF96D766),
              //                         )),
              //                     child: Image.asset("assets/icon/cross.png"),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             Container(
              //               height: 52.h,
              //               width: double.infinity,
              //               decoration:
              //                   BoxDecoration(color: Color(0xfffF5F5F5)),
              //               child: Row(
              //                 children: [
              //                   Container(
              //                     height: 40.h,
              //                     width: 40.w,
              //                     decoration: BoxDecoration(
              //                         color: Color.fromARGB(255, 195, 226, 191),
              //                         borderRadius: BorderRadius.circular(100)),
              //                     child: Center(
              //                         child: Text(
              //                       "TK",
              //                       style: TextStyle(
              //                           fontSize: 16,
              //                           fontWeight: FontWeight.w600,
              //                           color: Color(0XFFF7AC455)),
              //                     )),
              //                   ),
              //                   Text(
              //                     "Add a password to settings for improved account security",
              //                     style: TextStyle(
              //                       fontSize: 14,
              //                       fontWeight: FontWeight.w600,
              //                       color: Colors.black,
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             )
              //           ],
              //         )));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
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
        title: Text(
          "WQ3LY",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
                color: Color(0xfffFFFFF),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              "TK",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA3A3A3)),
            )),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
            child: Container(
              width: 357.w,
              height: 550.h,
              decoration: BoxDecoration(
                  color: Color(0xfffFFFFFF),
                  border: Border.all(
                    color: Color(0xfffA8A8A8),
                    width: 1.5.w,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xfffA8A8A8),
                        spreadRadius: 3,
                        blurRadius: 6,
                        offset: Offset(2, 0))
                  ]),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Share your signing experience!",
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
                            child: Container(
                              // margin: EdgeInsets.all(8),
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
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
                              child: Image.asset("assets/icon/cross.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                  "Don't worry, the document you signed or sent wont be shared; only your signing experience is. Share your signing card and showcase your signature! ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xfff737373))),
                              SizedBox(
                                height: 15.h,
                              ),
                              Container(
                                width: 340.w,
                                height: 335.h,
                                decoration: BoxDecoration(
                                  color: Color(0xfffFFFFFF),
                                  border: Border.all(
                                    color: Color(0xfffA8A8A8),
                                    width: 1.5.w,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 15,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "I just sent a document in style with WQ3ly. Check it out!",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Text(
                                        "https://app.wq3ly.com/share/yuiuytugtj",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xfff96D766)),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Container(
                                        height: 200,
                                        width: 320,
                                        decoration: BoxDecoration(
                                          color: Color(0xfffFFFFFF),
                                          border: Border.all(
                                            color: Color(0xfffA8A8A8),
                                            width: 1.w,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Image.asset(
                                          "assets/image/31630d42e5382d8e758330832d7efd04.png",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 40.h,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfffFFFFFF),
                                      border: Border.all(
                                        color: Color(0xfffA8A8A8),
                                        width: 0.3.w,
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icon/X--Streamline-Simple-Icons.png",
                                      ),
                                      Text(
                                        "  Tweet",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 40.h,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfffFFFFFF),
                                      border: Border.all(
                                        color: Color(0xfffA8A8A8),
                                        width: 0.3.w,
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/icon/two.png"),
                                      Text(
                                        "  Copy Link",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (index) {},
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/file-signature.png',
              width: 24,
              height: 24,
            ),
            label: 'Documents',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/drop-down (1).png',
              width: 24,
              height: 24,
            ),
            label: 'Templates',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/square-plus.png',
              width: 24,
              height: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/family-pants.png',
              width: 24,
              height: 24,
            ),
            label: 'Teams',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/document-folder-gear.png',
              width: 24.w,
              height: 24.h,
            ),
            label: 'Settings',
          ),
        ],
      ),
    ));
  }
}
