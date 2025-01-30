import 'package:application_wq3ly/screen/documents_pdf_screen.dart';
import 'package:application_wq3ly/screen/documents_screen.dart';
import 'package:application_wq3ly/screen/duplicate_screen.dart';
import 'package:application_wq3ly/screen/share_screen.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowdialogWidget extends StatelessWidget {
  // ShowdialogWidget({required this.onPressed});
  // final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Action",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return DocumentsPdfScreen();
                              }));
                            },
                            icon: Icon(Icons.create),
                          ),
                          Text(
                            "Sign",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit_square),
                            color: Color(0xfffD4D4D4),
                          ),
                          Text(
                            "Edit",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfffD4D4D4),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.file_download_outlined),
                            color: Color(0xfffD4D4D4),
                          ),
                          Text(
                            "Download",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfffD4D4D4),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return DuplicateScreen();
                              }));
                            },
                            icon: Icon(Icons.content_copy_rounded),
                          ),
                          Text(
                            "Duplicate",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        title: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Move Document to Team",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                "Select a team to move this document to. This action cannot be undone.",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xfffA3A3A3)),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              CustomTextFourmfield(
                                                hintText: "Select a team",
                                                hintStyle: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xfffA3A3A3)),
                                                suffixIcon: Icon(
                                                    Icons.expand_more_outlined),
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
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                    onPressed: () {},
                                                    borderRadius: 6,
                                                    buttonWidth: 135.w,
                                                    backgroundColor:
                                                        Color(0xfffE5E5E5),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  TextButon(
                                                    buttonText: "Move",
                                                    textStyle: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                    onPressed: () {},
                                                    borderRadius: 6,
                                                    buttonWidth: 135.w,
                                                    backgroundColor:
                                                        Color(0xfffE4F3DD),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ));
                            },
                            icon: Icon(Icons.arrow_right_alt),
                          ),
                          Text(
                            "Move to team",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        title: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Are you sure?",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                "You are about to delete",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xfffA3A3A3)),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "IV.1_information_and_communication_technology.pdf",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xfffA3A3A3)),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Container(
                                                height: 75.h,
                                                width: 310.w,
                                                decoration: BoxDecoration(
                                                    color: Color(0xfffA3A3A3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "By deleting this document,\n. the following will occur:The document will be hidden from your account\n.  Recipients will still retain their copy of the documen",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xfffE2CC05)),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              CustomTextFourmfield(
                                                hintText:
                                                    "Type delete  to confirm",
                                                hintStyle: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xfffA3A3A3)),
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
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                    backgroundColor:
                                                        Color(0xfffE5E5E5),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  TextButon(
                                                    buttonText: "Delete",
                                                    textStyle: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                    backgroundColor:
                                                        Color(0xfffE21205),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ));
                            },
                            icon: Icon(Icons.delete_outline_outlined),
                          ),
                          Text(
                            "Delete",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Share",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.update_sharp),
                            color: Color(0xfffD4D4D4),
                          ),
                          Text(
                            "Resend",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfffD4D4D4),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return ShareScreen();
                              }));
                            },
                            icon: Icon(Icons.share),
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ));
      },
      icon: Icon(
        Icons.keyboard_control_rounded,
        color: Color(0xfff96D766),
      ),
    );
  }
}
