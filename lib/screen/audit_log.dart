import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuditLog extends StatelessWidget {
  const AuditLog({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Image.asset(
                        "assets/icon/left-chevron3 (2).png",
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  Text(
                    "Documents",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xfff96D766)),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Document.pdf",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset("assets/icon/new-document.png"),
                  SizedBox(
                    width: 5.h,
                  ),
                  Text(
                    "Draft",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFFA3A3A3)),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(
                      //         builder: (context) {
                      //   return EditAddFields();
                      // }));
                    },
                    child: Container(
                        height: 40.h,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Color(0xfffE5E5E5),
                            border: Border.all(
                              color: Color(0xfffA8A8A8),
                              width: 0.5.w,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.file_upload_outlined),
                            Text(
                              "Download Certificate",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 15.h,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   return AuditLog();
                      // }));
                    },
                    child: Container(
                        height: 40.h,
                        width: 100.w,
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
                            Icon(Icons.file_download_outlined),
                            Text(
                              "Download",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0XFFFA2E771),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Document title",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Document.pdf",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Document status",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Draft",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Date created",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Jan 1, 2025, 7:09:00 PM",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Time zone",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Africa/Cairo",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Document ID",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "80",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Created by",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "user name mail@gmail.com",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Last updated",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Jan 1, 2025, 7:09:00 PM",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373)),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Recipients",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              " . [SIGNER] Direct link recipient\n   (direct.link@app.wq3ly.com)",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373)),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Color(0XFFFE5E5E5))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                "Time",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373),
                                ),
                              ),
                              SizedBox(
                                width: 75.w,
                              ),
                              Text(
                                "User",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373),
                                ),
                              ),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text(
                                "Actions",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373),
                                ),
                              ),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text(
                                "IP Address",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373),
                                ),
                              ),
                              SizedBox(
                                width: 100.w,
                              ),
                              Text(
                                "IP Address  ",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFF737373),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(0XFFFE5E5E5),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text(
                              "06/13/23",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFF171717),
                              ),
                            ),
                            SizedBox(
                              width: 45.w,
                            ),
                            Text(
                              "user name",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFF171717),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Text(
                              "Created the document",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFF171717),
                              ),
                            ),
                            SizedBox(
                              width: 100.w,
                            ),
                            Text(
                              "197.42.240.153",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373),
                              ),
                            ),
                            SizedBox(
                              width: 100.w,
                            ),
                            Text(
                              "Chrome  ",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "10:45 PM",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFFF171717),
                            ),
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Text(
                            " mail@gmail.com",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFFF171717),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
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
                        border: Border.all(color: Color(0XFFF737373)),
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
                    child: Image.asset("assets/icon/left-chevron.png",
                        color: Color(0XFFF737373)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/icon/left-chevron (1).png",
                        color: Color(0XFFF737373)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/icon/right-chevron.png",
                      color: Color(0XFFF737373),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/icon/right-chevron (1).png",
                        color: Color(0XFFF737373)),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
