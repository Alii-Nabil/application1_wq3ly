import 'package:application_wq3ly/screen/audit_log.dart';
import 'package:application_wq3ly/screen/edit_add_fields.dart';
import 'package:application_wq3ly/widget/textefieldoptions_widget.dart';
import 'package:application_wq3ly/widget/textmessageoptions.dart';
import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditAddSubject extends StatefulWidget {
  const EditAddSubject({super.key});

  @override
  State<EditAddSubject> createState() => _EditAddSubjectState();
}

class _EditAddSubjectState extends State<EditAddSubject> {
  double _height = 300;

  double _width = 350;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                      height: 650.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0XFFFE5E5E5),
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Color(0XFFFA3A3A3), width: .5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 3,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5.w, vertical: 10.h),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Add Subject",
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Add the subject and message you wish to send to signers.",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xfff737373),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 1.h,
                                            width: double.infinity.w,
                                            color: Color(0xfffA3A3A3),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Subject (Optional)",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                CustomTextFourmfield(
                                                  hintText: "",
                                                ),
                                                SizedBox(height: 15.h),
                                                Text(
                                                  "Message (Optional)",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                TextMessageOptions(),
                                                SizedBox(
                                                  height: 20.h,
                                                ),
                                                Text(
                                                  "You can use the following variables in your\n message:",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xfffA3A3A3),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 5.h,
                                                          width: 5.w,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.black,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100)),
                                                        ),
                                                        SizedBox(
                                                          width: 5.w,
                                                        ),
                                                        Text(
                                                          "{signer.name} ",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Text(
                                                          " - The signer's name ",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0xfffA3A3A3),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 5.h,
                                                          width: 5.w,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.black,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100)),
                                                        ),
                                                        SizedBox(
                                                          width: 5.w,
                                                        ),
                                                        Text(
                                                          "{signer.email}",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Text(
                                                          " - The signer's email",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0xfffA3A3A3),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 5.h,
                                                          width: 5.w,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.black,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100)),
                                                        ),
                                                        SizedBox(
                                                          width: 5.w,
                                                        ),
                                                        Text(
                                                          "{document.name}",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 3.w,
                                                        ),
                                                        Text(
                                                          " - The document's name",
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Color(
                                                                0xfffA3A3A3),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Text(
                                            "Sign Decument 3/4",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xfffA3A3A3),
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            height: 15.h,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 5.h,
                                                width: 84.w,
                                                color: Color(0xfff96D766),
                                              ),
                                              Container(
                                                height: 5.h,
                                                width: 84.w,
                                                color: Color(0xfff96D766),
                                              ),
                                              Container(
                                                height: 5.h,
                                                width: 84.w,
                                                color: Color(0xfff96D766),
                                              ),
                                              Container(
                                                height: 5.h,
                                                width: 84.w,
                                                color: Color(0xfff96D766),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return EditAddFields();
                                                  }));
                                                },
                                                child: Container(
                                                    height: 55.h,
                                                    width: 145,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color:
                                                            Color(0xfffE5E5E5),
                                                        border: Border.all(
                                                          color: Color(
                                                              0xfffA8A8A8),
                                                          width: 0.5.w,
                                                        )),
                                                    child: Center(
                                                      child: Text(
                                                        " Go Back",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return AuditLog();
                                                  }));
                                                },
                                                child: Container(
                                                    height: 55.h,
                                                    width: 145,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color:
                                                            Color(0xfffA2E771),
                                                        border: Border.all(
                                                          color: Color(
                                                              0xfffA8A8A8),
                                                          width: 0.5.w,
                                                        )),
                                                    child: Center(
                                                      child: Text(
                                                        " Send",
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
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
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
    );
  }
}
