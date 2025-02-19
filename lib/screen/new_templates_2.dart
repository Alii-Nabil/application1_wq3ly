import 'package:application_wq3ly/screen/create_as_draft.dart';
import 'package:application_wq3ly/screen/documents_pdf_screen.dart';
import 'package:application_wq3ly/screen/duplicate_screen.dart';
import 'package:application_wq3ly/screen/share_screen.dart';
import 'package:application_wq3ly/widget/bottom_navigationbar.dart';
import 'package:application_wq3ly/widget/showDialog_widget.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewTemplates2 extends StatelessWidget {
  NewTemplates2({super.key});
  bool isSwitched = false;
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                color: Color(0xFFA8A8A8),
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
                                          "New Template",
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
                                              onPressed: () {},
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
                  child: InkWell(
                    onTap: () {},
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
                  height: 50.h,
                ),
                Container(
                  height: 150.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                    color: Color(0xFFFE5E5E5),
                  )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 25),
                        child: Row(
                          children: [
                            Text(
                              "Created",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373),
                              ),
                            ),
                            SizedBox(
                              width: 40.w,
                            ),
                            Text(
                              "Title",
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
                              "Type",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset("assets/icon/alert-sign.png")
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: Color(0xFFFE5E5E5),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                "06/13/23",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0XFFF171717)),
                              ),
                              SizedBox(
                                width: 30.w,
                              ),
                              Text(
                                "Test.pdf",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0XFFF171717)),
                              ),
                              SizedBox(
                                width: 80.w,
                              ),
                              Image.asset("assets/icon/padlock.png"),
                              SizedBox(
                                width: 7.w,
                              ),
                              Text(
                                "Private",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xfff404040)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          title: Container(
                                            height: 300,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .sports_basketball_outlined,
                                                      color: Color(0XFFF96D766),
                                                    ),
                                                    Text(
                                                      "Public",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0XFFF262626)),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  "Public templates are connected to your public profile. Any modifications to public templates will also appear in your public profile.",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0XFFF737373)),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: 1.5,
                                                  width: double.infinity,
                                                  color: Color(0xFFFD4D4D4),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Container(
                                                  height: 30.h,
                                                  width: 110.w,
                                                  decoration: BoxDecoration(
                                                      color: Color(0XFFFE5E5E5),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Row(
                                                      children: [
                                                        Image.asset(
                                                            "assets/icon/link.png"),
                                                        SizedBox(
                                                          width: 10.w,
                                                        ),
                                                        Text(
                                                          "Direct link",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12,
                                                            color: Color(
                                                                0XFFF000000),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  "Direct link templates contain one dynamic recipient placeholder. Anyone with access to this link can sign the document, and it will then appear on your documents page.",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0XFFF737373)),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Container(
                                                  height: 1.5,
                                                  width: double.infinity,
                                                  color: Color(0xFFFD4D4D4),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                        "assets/icon/padlock.png"),
                                                    SizedBox(
                                                      width: 7.w,
                                                    ),
                                                    Text(
                                                      "Private",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color(
                                                              0XFFF404040)),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Private templates can only be modified and viewed by you.",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0XFFF737373)),
                                                ),
                                              ],
                                            ),
                                          )));
                                },
                                child: Container(
                                  height: 30.h,
                                  width: 110.w,
                                  decoration: BoxDecoration(
                                      color: Color(0XFFFE5E5E5),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/icon/link.png"),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          "Direct link",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color(0XFFF000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      title: Container(
                                        height: 250.h,
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Create document from template",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0XFFF000000),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10),
                                                    child: Container(
                                                      // margin: EdgeInsets.all(8),
                                                      height: 30.h,
                                                      width: 30.w,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color(
                                                                  0xFFF96D766),
                                                              blurRadius: 4,
                                                            )
                                                          ],
                                                          color:
                                                              Color(0xFFE4F3DD),
                                                          border: Border.all(
                                                            width: 2,
                                                            color: Color(
                                                                0xFFF96D766),
                                                          )),
                                                      child: Image.asset(
                                                          "assets/icon/cross.png"),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            Text(
                                              "Add the recipients to create the document with",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0XFFF737373)),
                                            ),
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Email",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          Color(0XFFF262626)),
                                                ),
                                                SizedBox(
                                                  width: 90,
                                                ),
                                                Text(
                                                  "Name",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color:
                                                          Color(0XFFF262626)),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 110,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0XFFF737373)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      "direct.link@app.wq3ly.com",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color(
                                                              0XFFF262626)),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  height: 40,
                                                  width: 110,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0XFFF737373)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      "Direct link recipient",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color(
                                                              0XFFF262626)),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Send document",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          Color(0XFFFA3A3A3)),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Switch(
                                                  value: isSwitched,
                                                  onChanged: (value) {},
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                      height: 50.h,
                                                      width: 110,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Color(
                                                              0xfffE5E5E5),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xfffA8A8A8),
                                                            width: 0.5.w,
                                                          )),
                                                      child: Center(
                                                        child: Text(
                                                          " Cancel",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      )),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return CreateAsDraft();
                                                    }));
                                                  },
                                                  child: Container(
                                                      height: 50.h,
                                                      width: 110,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: Color(
                                                              0xfffA2E771),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xfffA8A8A8),
                                                            width: 0.5.w,
                                                          )),
                                                      child: Center(
                                                        child: Text(
                                                          " Create as draft",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 40.h,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0XFFF737373)),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.add),
                                      Text(
                                        "Use Template",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0XFFF262626)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            title: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Action",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                          Icons.edit_square),
                                                      color: Color(0XFFF737373),
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0XFFF737373),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        showDialog(
                                                          context: context,
                                                          builder: (context) =>
                                                              AlertDialog(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            title: Container(
                                                              height: 150.h,
                                                              width: double
                                                                  .infinity,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        "Do you want to duplicate this\n template?",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              Color(0XFFF000000),
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets
                                                                              .symmetric(
                                                                              horizontal: 10),
                                                                          child:
                                                                              Container(
                                                                            // margin: EdgeInsets.all(8),
                                                                            height:
                                                                                30.h,
                                                                            width:
                                                                                30.w,
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
                                                                            child:
                                                                                Image.asset("assets/icon/cross.png"),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        15.h,
                                                                  ),
                                                                  Text(
                                                                    "Your template will be duplicated.",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Color(
                                                                            0XFFF737373)),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        15.h,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () {},
                                                                        child: Container(
                                                                            height: 50.h,
                                                                            width: 110,
                                                                            decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(10),
                                                                                color: Color(0xfffE5E5E5),
                                                                                border: Border.all(
                                                                                  color: Color(0xfffA8A8A8),
                                                                                  width: 0.5.w,
                                                                                )),
                                                                            child: Center(
                                                                              child: Text(
                                                                                " Cancel",
                                                                                style: TextStyle(
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  color: Colors.black,
                                                                                ),
                                                                              ),
                                                                            )),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          // Navigator.of(context).push(MaterialPageRoute(builder:
                                                                          //     (context) {
                                                                          //   return AddPlaceholdersWidget();
                                                                          // }));
                                                                        },
                                                                        child: Container(
                                                                            height: 50.h,
                                                                            width: 110,
                                                                            decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(10),
                                                                                color: Color(0xfffA2E771),
                                                                                border: Border.all(
                                                                                  color: Color(0xfffA8A8A8),
                                                                                  width: 0.5.w,
                                                                                )),
                                                                            child: Center(
                                                                              child: Text(
                                                                                " Duplicate",
                                                                                style: TextStyle(
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  color: Colors.black,
                                                                                ),
                                                                              ),
                                                                            )),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      icon: Icon(Icons
                                                          .content_copy_rounded),
                                                    ),
                                                    Text(
                                                      "Duplicate",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        showDialog(
                                                          context: context,
                                                          builder: (context) =>
                                                              AlertDialog(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            title: Container(
                                                              height: 250.h,
                                                              width: double
                                                                  .infinity,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        "Direct Link Signing",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          color:
                                                                              Color(0XFFF000000),
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets
                                                                              .symmetric(
                                                                              horizontal: 10),
                                                                          child:
                                                                              Container(
                                                                            // margin: EdgeInsets.all(8),
                                                                            height:
                                                                                30.h,
                                                                            width:
                                                                                30.w,
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
                                                                            child:
                                                                                Image.asset("assets/icon/cross.png"),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        15.h,
                                                                  ),
                                                                  Text(
                                                                    "Manage the direct link signing for this template",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Color(
                                                                            0XFFF737373)),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        15.h,
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Text(
                                                                        "Manage the direct link signing\nfor this template",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            color: Color(0XFFF262626)),
                                                                      ),
                                                                      Image.asset(
                                                                          "assets/icon/alert-sign.png"),
                                                                      SizedBox(
                                                                        width:
                                                                            23.w,
                                                                      ),
                                                                      IconButton(
                                                                          onPressed:
                                                                              () {},
                                                                          icon:
                                                                              Icon(
                                                                            Icons.toggle_on,
                                                                            color:
                                                                                Color(0XFFF96D766),
                                                                          ))
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    "Copy Shareable Link",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      color: Color(
                                                                          0XFFF262626),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        10.h,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        "app.wq3ly.com/d/uoAOQXpUJbZEXPIDoSZu4",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                11,
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color: Color(0XFFFA3A3A3)),
                                                                      ),
                                                                      Image.asset(
                                                                          "assets/icon/copy.png")
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        10.h,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () {},
                                                                        child: Container(
                                                                            height: 50.h,
                                                                            width: 110,
                                                                            decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(10),
                                                                                color: Color(0XFFFE21205),
                                                                                border: Border.all(
                                                                                  color: Color(0xfffA8A8A8),
                                                                                  width: 0.5.w,
                                                                                )),
                                                                            child: Center(
                                                                              child: Text(
                                                                                " Remove",
                                                                                style: TextStyle(
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  color: Color(0XFFFFAFAFA),
                                                                                ),
                                                                              ),
                                                                            )),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () {
                                                                          // Navigator.of(context).push(MaterialPageRoute(builder:
                                                                          //     (context) {
                                                                          //   return AddPlaceholdersWidget();
                                                                          // }));
                                                                        },
                                                                        child: Container(
                                                                            height: 50.h,
                                                                            width: 80,
                                                                            decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(10),
                                                                                color: Color(0xfffA2E771),
                                                                                border: Border.all(
                                                                                  color: Color(0xfffA8A8A8),
                                                                                  width: 0.5.w,
                                                                                )),
                                                                            child: Center(
                                                                              child: Text(
                                                                                " Save",
                                                                                style: TextStyle(
                                                                                  fontSize: 16,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  color: Colors.black,
                                                                                ),
                                                                              ),
                                                                            )),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      icon: Icon(Icons.share),
                                                    ),
                                                    Text(
                                                      "Direct link",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        showDialog(
                                                            context: context,
                                                            builder:
                                                                (context) =>
                                                                    AlertDialog(
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(5)),
                                                                      title:
                                                                          SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  "Move Template to Team",
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
                                                                              height: 10.h,
                                                                            ),
                                                                            Text(
                                                                              "Select a team to move this template to. This action cannot be undone.",
                                                                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xfffA3A3A3)),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 15.h,
                                                                            ),
                                                                            CustomTextFourmfield(
                                                                              hintText: "Select a team",
                                                                              hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xfffA3A3A3)),
                                                                              suffixIcon: Icon(Icons.expand_more_outlined),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 15.h,
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
                                                                                  onPressed: () {},
                                                                                  borderRadius: 6,
                                                                                  buttonWidth: 135.w,
                                                                                  backgroundColor: Color.fromARGB(255, 218, 216, 216),
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 10.h,
                                                                                ),
                                                                                TextButon(
                                                                                  buttonText: "Move",
                                                                                  textStyle: TextStyle(
                                                                                    fontSize: 14,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    color: Colors.black,
                                                                                  ),
                                                                                  onPressed: () {},
                                                                                  borderRadius: 6,
                                                                                  buttonWidth: 135.w,
                                                                                  backgroundColor: Color(0xfffE4F3DD),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ));
                                                      },
                                                      icon: Icon(Icons
                                                          .arrow_right_alt),
                                                    ),
                                                    Text(
                                                      "Move to team",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                        showDialog(
                                                            context: context,
                                                            builder:
                                                                (context) =>
                                                                    AlertDialog(
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(5)),
                                                                      title:
                                                                          SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  "Do you want to delete this\n template?",
                                                                                  style: TextStyle(
                                                                                    fontSize: 14,
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
                                                                              height: 10,
                                                                            ),
                                                                            Text(
                                                                              "Please note that this action is irreversible. Once confirmed, your template will be permanently deleted.",
                                                                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xfffA3A3A3)),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 15.h,
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
                                                                                  buttonWidth: 135.w,
                                                                                  backgroundColor: Color(0xfffE5E5E5),
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 10.h,
                                                                                ),
                                                                                TextButon(
                                                                                  buttonText: "Delete",
                                                                                  textStyle: TextStyle(
                                                                                    fontSize: 14,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    color: Color(0xfffE5E5E5),
                                                                                  ),
                                                                                  onPressed: () {
                                                                                    // Navigator.of(context)
                                                                                    //     .push(MaterialPageRoute(builder: (context) {
                                                                                    //   return UsernameScreen();
                                                                                    // }));
                                                                                  },
                                                                                  borderRadius: 6,
                                                                                  buttonWidth: 135.w,
                                                                                  backgroundColor: Color(0xfffE21205),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ));
                                                      },
                                                      icon: Icon(Icons
                                                          .delete_outline_outlined),
                                                    ),
                                                    Text(
                                                      "Delete",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ));
                                },
                                child: Icon(
                                  Icons.keyboard_control_rounded,
                                  color: Color(0xfff96D766),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
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
            ),
          )
        ],
      ),
    ));
  }
}
