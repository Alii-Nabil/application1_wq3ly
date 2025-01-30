import 'dart:ffi';

import 'package:application_wq3ly/main.dart';
import 'package:application_wq3ly/screen/duplicate_screen.dart';
import 'package:application_wq3ly/widget/completed_widget.dart';
import 'package:application_wq3ly/widget/notifications_widget.dart';
import 'package:application_wq3ly/widget/showDialog_widget.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0XFFFFAFAFA),
      //   elevation: 3,
      //   actions: [
      //     Container(
      //       height: 25.h,
      //       width: 25.w,
      //       decoration: BoxDecoration(
      //           color: Color(0xfffFFFFFF),
      //           borderRadius: BorderRadius.circular(100)),
      //       child: Center(
      //           child: Text(
      //         "5",
      //         style: TextStyle(
      //             fontSize: 14,
      //             fontWeight: FontWeight.w600,
      //             color: Color(0XFFFA3A3A3)),
      //       )),
      //     ),
      //     InkWell(
      //       onTap: () {
      //         Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      //           return NotificationsWidget();
      //         }));
      //       },
      //       child: Padding(
      //         padding: const EdgeInsets.only(right: 5, left: 5),
      //         child: Container(
      //           height: 32,
      //           width: 30,
      //           decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage(
      //             "assets/image/bell-notification-social-media.png",
      //           ))),
      //         ),
      //       ),
      //     ),
      //   ],
      //   title: Text(
      //     "WQ3LY",
      //     style: TextStyle(
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //       color: Colors.black,
      //     ),
      //   ),
      //   centerTitle: true,
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(
      //       height: 20.h,
      //       width: 20.w,
      //       decoration: BoxDecoration(
      //           color: Color(0xfffFFFFF),
      //           borderRadius: BorderRadius.circular(100)),
      //       child: Center(
      //           child: Text(
      //         "TK",
      //         style: TextStyle(
      //             fontSize: 16,
      //             fontWeight: FontWeight.w600,
      //             color: Color(0XFFFA3A3A3)),
      //       )),
      //     ),
      //   ),
      // ),
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
            height: 10.h,
          ),
          Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 247, 243, 243),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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
                        "Completed",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      icon: Icon(
                        Icons.check_circle_outline,
                        color: Color(0xfffA2E771),
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
                ),
              )),
          SizedBox(
            height: 15.h,
          ),
          Container(
            height: 265.h,
            width: 358.w,
            decoration: BoxDecoration(
                border: Border.all(
              color: Color(0xfffE5E5E5),
            )),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Created",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff737373)),
                      ),
                      Text(
                        "Title",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff737373)),
                      ),
                      Text(
                        "Recipient",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff737373)),
                      ),
                      Text(
                        "Status",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xfff737373)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color(0xfffE5E5E5),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 46.h,
                    width: 500.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "  06/13/23",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff171717)),
                            ),
                            Text(
                              "  10:45 PM",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff737373)),
                            ),
                          ],
                        ),
                        Text(
                          "Test.pdf",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfff171717)),
                        ),
                        Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 157, 214, 128),
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
                        TextButton.icon(
                          onPressed: () {},
                          label: Text(
                            "Draft",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          icon: Icon(
                            Icons.insert_drive_file_outlined,
                            color: Color(0xfffE2CC05),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_square,
                            size: 24.0,
                            color: Colors.black,
                          ),
                          label: Text(
                            " Edit   ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xfffE5E5E5)),
                            // padding:
                            //     MaterialStateProperty.all(EdgeInsets.all(22)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        ShowdialogWidget(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color(0xfffE5E5E5),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 46.h,
                    width: 500.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "  06/13/23",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff171717)),
                            ),
                            Text(
                              "  10:45 PM",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff737373)),
                            ),
                          ],
                        ),
                        Text(
                          "Test.pdf",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfff171717)),
                        ),
                        Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 157, 214, 128),
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
                        TextButton.icon(
                          onPressed: () {},
                          label: Text(
                            "Pending",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          icon: Icon(
                            Icons.access_time,
                            color: Color(0xfff3879C5),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 24.0,
                            color: Colors.black,
                          ),
                          label: Text(
                            " Sign   ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xfffA2E771)),
                            // padding:
                            //     MaterialStateProperty.all(EdgeInsets.all(22)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        ShowdialogWidget(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color(0xfffE5E5E5),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 46.h,
                    width: 500.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "  06/13/23",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff171717)),
                            ),
                            Text(
                              "  10:45 PM",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff737373)),
                            ),
                          ],
                        ),
                        Text(
                          "Test.pdf",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfff171717)),
                        ),
                        Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 157, 214, 128),
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
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            size: 24.0,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Remind",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xfffE5E5E5)),
                            // padding:
                            //     MaterialStateProperty.all(EdgeInsets.all(22)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        ShowdialogWidget(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color(0xfffE5E5E5),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 46.h,
                    width: 500.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "  06/13/23",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff171717)),
                            ),
                            Text(
                              "  10:45 PM",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfff737373)),
                            ),
                          ],
                        ),
                        Text(
                          "Test.pdf",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfff171717)),
                        ),
                        Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 157, 214, 128),
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
                        CompletedWidget(),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.file_upload_outlined,
                            size: 24.0,
                            color: Colors.black,
                          ),
                          label: Text(
                            " Share  ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xfffE5E5E5)),
                            // padding:
                            //     MaterialStateProperty.all(EdgeInsets.all(22)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        ShowdialogWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Row per page",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xfffE5E5E5),
                      ),
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "4",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfffA3A3A3)),
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.expand_more))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  "Page 1 of 1",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xfff525252)),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset("assets/icon/left-chevron.png"),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset("assets/icon/left-chevron (1).png"),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset("assets/icon/right-chevron.png"),
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset("assets/icon/right-chevron (1).png"),
                ),
              ],
            ),
          )
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
