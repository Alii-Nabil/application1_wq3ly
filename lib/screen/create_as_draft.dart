import 'package:application_wq3ly/screen/edit_general.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAsDraft extends StatefulWidget {
  CreateAsDraft({super.key});

  @override
  State<CreateAsDraft> createState() => _CreateAsDraftState();
}

class _CreateAsDraftState extends State<CreateAsDraft> {
  double _height = 300;

  double _width = 350;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        fontSize: 14,
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
                    width: 10.h,
                  ),
                  Text(
                    "Draft",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFFA3A3A3)),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Image.asset(
                    "assets/icon/user.png",
                    color: Color(0XFFFA3A3A3),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "1 Recipient(s)",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFFA3A3A3)),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 190.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0XFFFE5E5E5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0XFFFA3A3A3), width: .5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Document draft",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFFF000000),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        title: Container(
                                          height: 270.h,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Action",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0XFFF171717)),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return EditGeneral();
                                                  }));
                                                },
                                                child: Row(
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
                                                          color: Color(
                                                              0XFFF737373)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Image.asset(
                                                          "assets/icon/policy (1).png"),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      "Audit log",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0XFFF737373)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Image.asset(
                                                          "assets/icon/copy1.png"),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      "Duplicate",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0XFFF737373)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Image.asset(
                                                          "assets/icon/delete2.png"),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      "Delete",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0XFFF737373)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                "Share",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0XFFF171717)),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Image.asset(
                                                          "assets/icon/history.png"),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      "Resend",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0XFFF737373)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Image.asset(
                                                          "assets/icon/share.png"),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      "Share",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0XFFF737373)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )));
                              },
                              icon: Icon(Icons.keyboard_control_rounded))
                        ],
                      ),
                      Text(
                        "This document is currently a draft and has not been sent",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFFF737373)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: Color(0XFFF737373),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
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
                                Icon(Icons.edit_square),
                                Text(
                                  "Edit",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 190.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0XFFFE5E5E5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0XFFFA3A3A3), width: .5)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Information",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: Color(0XFFF737373),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Uploaded by",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373)),
                          ),
                          Text(
                            "You",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: Color(0XFFF737373),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Created",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373)),
                          ),
                          Text(
                            "January 1, 2025",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: Color(0XFFF737373),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Last modified",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373)),
                          ),
                          Text(
                            "1 hour ago",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF262626)),
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
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0XFFFE5E5E5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0XFFFA3A3A3), width: .5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recipients",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF000000)),
                          ),
                          Image.asset("assets/icon/pencil.png")
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: Color(0XFFF737373),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
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
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "direct.link@app.wq3ly.com",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0XFFF737373)),
                              ),
                              Text(
                                "Signer",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0XFFF737373)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0XFFFE5E5E5),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0XFFFA3A3A3), width: .5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recipients",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF000000)),
                          ),
                          Image.asset("assets/icon/pencil.png")
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: Color(0XFFF737373),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Color(0XFFF737373))),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            " You created the document",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFF737373)),
                          ),
                          SizedBox(
                            width: 80.w,
                          ),
                          Text(
                            "1 hr. ago",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFF737373)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Container(
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: _height,
                        width: _width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Color(0xfff96D766),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            // Text(
                            //   "Documenso Supporter Pledge",
                            //   style: TextStyle(
                            //     fontSize: 14,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 30.h,
                            // ),
                            // Text(
                            //   "Our mission is to create an open signing infrastructure that empowers the world.We believe openness and cooperation are the way every business should be conducted",
                            //   style: TextStyle(
                            //     fontSize: 14,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 30.h,
                            // ),
                            // Text(
                            //   "By creating an open source signing solution we want to bring these values to businesses' most fundamental act: signing. Document Signing should be open and transparent, as should all trust based products",
                            //   style: TextStyle(
                            //     fontSize: 14,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 30.h,
                            // ),
                            // Text(
                            //   "We aim to earn this trust by enabling everyone to self-host Documenso and inspect it’s inner workings. We openly share our source, knowledge, and progress while creating Documenso.",
                            //   style: TextStyle(
                            //     fontSize: 14,
                            //     color: Colors.black,
                            //   ),
                            // ),

                            // Text(
                            //   "Exceptional products are the results of exceptional communities and we strive to create an inclusive, creative environment, open to all who choose to support our mission. We value the inputs, contributions, and perspectives of everyone in our community, even though we can't apply them all.",
                            //   style: TextStyle(
                            //     fontSize: 14,
                            //     color: Colors.black,
                            //   ),
                            // ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (_height == 300) {
                                        _height = 700;
                                      } else {
                                        _height = 300;
                                      }
                                    });
                                  },
                                  child: Text(
                                    "ShowMore",
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
