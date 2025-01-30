import 'package:application_wq3ly/main.dart';
import 'package:application_wq3ly/screen/documents_screen.dart';
import 'package:application_wq3ly/screen/home_screen.dart';
import 'package:application_wq3ly/widget/notifications_widget.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DuplicateScreen extends StatefulWidget {
  @override
  State<DuplicateScreen> createState() => _DuplicateScreenState();
}

class _DuplicateScreenState extends State<DuplicateScreen> {
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Container(
              width: 357.w,
              height: 650.h,
              decoration: BoxDecoration(
                  color: Color(0xfffFFFFFF),
                  border: Border.all(
                    color: Color(0xfffA8A8A8),
                    width: 1.5.w,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xfffA2E771),
                      // spreadRadius: 0,
                      blurRadius: 6,
                      // offset: Offset(2, 0)
                    )
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
                            "Duplicate",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return HomeScreen();
                              }));
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
                      Container(
                          width: 357.w,
                          height: 569.h,
                          decoration: BoxDecoration(
                            color: Color(0xfffFFFFFF),
                            border: Border.all(
                              color: Color(0xfffA8A8A8),
                              width: 1.5.w,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Text("Documenso Supporter Pledge   ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xfff737373))),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Text(
                                          "Our mission is to create an open signing infrastructure that empowers the world.We believe openness and cooperation are the way every business should be conducted   ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xfff737373))),
                                      SizedBox(
                                        height: 40.h,
                                      ),
                                      Text(
                                          "We believe openness and cooperation are the way every business should be conducted     ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xfff737373))),
                                      SizedBox(
                                        height: 60.h,
                                      ),
                                      Text(
                                          "We aim to earn this trust by enabling everyone to self-host Documenso and inspect it’s inner workings. We openly share our source, knowledge, and progress while creating Documenso.   ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xfff737373))),
                                      SizedBox(
                                        height: 60.h,
                                      ),
                                      Text(
                                          "Exceptional products are the results of exceptional communities and we strive to create an inclusive, creative environment, open to all who choose to support our mission. We value the inputs, contributions, and perspectives of everyone in our community, even though we can't apply them all.  ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xfff737373))),
                                      SizedBox(
                                        height: 60.h,
                                      ),
                                      Text(
                                          "Exceptional products are the results of exceptional communities and we strive to create an inclusive, creative environment, open to all who choose to support our mission. We value the inputs, contributions, and perspectives of everyone in our community, even though we can't apply them all.  ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xfff737373))),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      TextButon(
                                        buttonText: "Cancel",
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {
                                          // Navigator.of(context)
                                          //     .push(MaterialPageRoute(builder: (context) {
                                          //   return UsernameScreen();
                                          // }));
                                        },
                                        borderRadius: 6,
                                        buttonWidth: 160.w,
                                        backgroundColor: Color(0xfffE5E5E5),
                                      ),
                                      TextButon(
                                        buttonText: "Duplicate",
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {
                                          // Navigator.of(context)
                                          //     .push(MaterialPageRoute(builder: (context) {
                                          //   return UsernameScreen();
                                          // }));
                                        },
                                        borderRadius: 6,
                                        buttonWidth: 160.w,
                                        backgroundColor: Color(0xfffA2E771),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )),
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
