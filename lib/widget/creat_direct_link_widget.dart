import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatDirectLinkWidget extends StatelessWidget {
  const CreatDirectLinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Container(
              height: 480,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Create Direct Signing Link",
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      ),
                    ],
                  ),
                  Text(
                    "Here's how it works:",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            )),
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Enable Direct Link Signing",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      "Once enabled, you can select any active recipient to be a direct link signing recipient, or create a new one. This recipient type cannot be edited or deleted.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfffA3A3A3),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            )),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Configure Direct Recipient",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      "Update the role and add fields as required for the direct recipient. The individual who uses the direct link will sign the document as the direct recipient.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfffA3A3A3),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            )),
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Share the Link",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      "Once your template is set up, share the link anywhere you want. The person who opens the link will be able to enter their information in the direct link recipient field and complete any other fields assigned to them.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfffA3A3A3),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            )),
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Document Creation",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      "After submission, a document will be automatically generated and added to your documents page. You will also receive a notification via email.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfffA3A3A3),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                title: Container(
                                  height: 300.h,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Choose Direct Link Recipient",
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
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Container(
                                                // margin: EdgeInsets.all(8),
                                                height: 30.h,
                                                width: 30.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0xFFF96D766),
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
                                        "Choose an existing recipient from below to continue",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xfffA3A3A3),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Container(
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: Color(0xfffA8A8A8),
                                          width: 0.5.w,
                                        )),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 10, bottom: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Recipient",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xfff737373),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                              Text(
                                                "Role",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xfff737373),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 55.h,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: Color(0xfffA8A8A8),
                                          width: 0.5.w,
                                        )),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8, top: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Recipient1",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0xfff737373),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 2.h,
                                                      ),
                                                      Text(
                                                        "Recipient.1@app.wq3ly.com",
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0xfff737373),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Text(
                                                  "Signer",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xfff737373),
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons
                                                          .brightness_1_outlined,
                                                      color: Color(0xfffA3A3A3),
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        "OR",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xfff737373),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                          showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  title: Container(
                                                    height: 290.h,
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
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10),
                                                                child:
                                                                    Container(
                                                                  height: 30.h,
                                                                  width: 30.w,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(5),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color:
                                                                              Color(0xFFF96D766),
                                                                          blurRadius:
                                                                              4,
                                                                        )
                                                                      ],
                                                                      color: Color(0xFFE4F3DD),
                                                                      border: Border.all(
                                                                        width:
                                                                            2,
                                                                        color: Color(
                                                                            0xFFF96D766),
                                                                      )),
                                                                  child: Image
                                                                      .asset(
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
                                                          "Manage the direct link signing for this template",
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Color(
                                                                0xfffA3A3A3),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Enable Direct Link Signing",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Image.asset(
                                                                "assets/icon/alert-sign.png"),
                                                            SizedBox(
                                                              width: 16.w,
                                                            ),
                                                            IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: Icon(
                                                                  Icons
                                                                      .toggle_on,
                                                                  color: Color(
                                                                      0xfff96D766),
                                                                  size: 37,
                                                                ))
                                                          ],
                                                        ),
                                                        Text(
                                                          "Copy Shareable Link",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        Container(
                                                            height: 1.h,
                                                            width:
                                                                double.infinity,
                                                            color: Color(
                                                                0xfffA3A3A3)),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "app.wq3ly.com/d/uoAOQXpUJbZEXPIDoSZu4",
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Color(
                                                                      0xfffA3A3A3)),
                                                            ),
                                                            IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: Icon(Icons
                                                                    .copy_outlined))
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Container(
                                                                  height: 60.h,
                                                                  width: 80,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(
                                                                              10),
                                                                          color: Color(
                                                                              0xfffE21205),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                Color(0xfffA8A8A8),
                                                                            width:
                                                                                0.5.w,
                                                                          )),
                                                                  child: Center(
                                                                    child: Text(
                                                                      " Remove",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        color: Color(
                                                                            0xfffFAFAFA),
                                                                      ),
                                                                    ),
                                                                  )),
                                                            ),
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Container(
                                                                  height: 60.h,
                                                                  width: 80,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(
                                                                              10),
                                                                          color: Color(
                                                                              0xfffA2E771),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                Color(0xfffA8A8A8),
                                                                            width:
                                                                                0.5.w,
                                                                          )),
                                                                  child: Center(
                                                                    child: Text(
                                                                      " Save",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        color: Color(
                                                                            0xfffFAFAFA),
                                                                      ),
                                                                    ),
                                                                  )),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  )));
                                        },
                                        child: Container(
                                            height: 55.h,
                                            width: 190,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color(0xfffA2E771),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Create one automatically",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                )));
                      },
                      child: Container(
                          height: 55.h,
                          width: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xfffA2E771),
                          ),
                          child: Center(
                            child: Text(
                              " Enable direct link signing",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      child: Container(
          height: 35.h,
          width: 145,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xfffFFFFFF),
              border: Border.all(
                color: Color(0xfffA8A8A8),
                width: 0.5.w,
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/icon/link.png"),
                Text(
                  " Create Direct Link",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
