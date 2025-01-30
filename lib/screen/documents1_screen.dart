import 'package:application_wq3ly/main.dart';
import 'package:application_wq3ly/widget/notifications_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Documents1Screen extends StatefulWidget {
  @override
  State<Documents1Screen> createState() => _Documents1ScreenState();
}

class _Documents1ScreenState extends State<Documents1Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          // Container(
          //   height: 341.h,
          //   width: 185.w,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(16),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Container(
              width: 355.w,
              height: 200.h,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add documents",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfffA3A3A3)),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Tap here to upload your document.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xfffD4D4D4)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Documents",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            title: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "All Time",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Last 7 days",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Last 15 days",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "Last 30 days",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Container(
                    height: 32,
                    width: 30,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                      "assets/image/calendar (1).png",
                    ))),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 243, 243),
              ),
              child: Row(
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      label: Text(
                        "All",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      )),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Draft",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    icon: Icon(
                      Icons.insert_drive_file_outlined,
                      color: Color(0xfffE2CC05),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Pending",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    icon: Icon(
                      Icons.access_time,
                      color: Color(0xfff3879C5),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      "Inbox",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    // icon: Icon(Icons.
                  ),
                ],
              )),
          SizedBox(
            height: 100.h,
          ),
          Column(
            children: [
              Container(
                height: 42.h,
                width: 42.w,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xfffE5E5E5),
                    ),
                    borderRadius: BorderRadius.circular(100)),
                child: Image.asset("assets/icon/check.png"),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Nothing here",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xfffD4D4D4)),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "There are no documents yet.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xfffD4D4D4)),
              ),
              Text(
                "Start by adding a document ->",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xfffD4D4D4)),
              ),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: CupertinoTabBar(
      //   onTap: (index) {},
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //         'assets/icon/file-signature.png',
      //         width: 24,
      //         height: 24,
      //       ),
      //       label: 'Documents',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //         'assets/icon/drop-down (1).png',
      //         width: 24,
      //         height: 24,
      //       ),
      //       label: 'Templates',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //         'assets/icon/square-plus.png',
      //         width: 24,
      //         height: 24,
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //         'assets/icon/family-pants.png',
      //         width: 24,
      //         height: 24,
      //       ),
      //       label: 'Teams',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Image.asset(
      //         'assets/icon/document-folder-gear.png',
      //         width: 24.w,
      //         height: 24.h,
      //       ),
      //       label: 'Settings',
      //     ),
      //   ],
      // ),
    ));
  }
}
