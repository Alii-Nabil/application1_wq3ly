import 'package:application_wq3ly/screen/complete_document_screen.dart';
import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:application_wq3ly/screen/complete_document_screen.dart';
import 'package:application_wq3ly/screen/documents1_screen.dart';
import 'package:application_wq3ly/screen/documents_screen.dart';
import 'package:application_wq3ly/screen/home_screen.dart';
import 'package:application_wq3ly/widget/image_button.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature/signature.dart';

class DocumentsPdfScreen extends StatefulWidget {
  DocumentsPdfScreen({super.key});

  @override
  State<DocumentsPdfScreen> createState() => _DocumentsPdfScreenState();
}

class _DocumentsPdfScreenState extends State<DocumentsPdfScreen> {
  bool isObscuretyText = true;

  SignatureController controller = SignatureController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                      "Document",
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
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset("assets/icon/user.png"),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                        child: Text(
                      "User Name",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Image.asset("assets/icon/mail.png"),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                        child: Text(
                      "(kjiggfevhjmkjn@gmail.com) has invited you to sign\n this document.",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
                      child: Container(
                        height: 500.h,
                        width: 365.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xfffE5E5E5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                            horizontal: 5.w,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sign Document",
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
                                "Please review the document before signing..",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xfff737373),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 1.h,
                                width: 320.w,
                                color: Color(0xfffA3A3A3),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Full Name",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              CustomTextFourmfield(
                                hintText: "Enter your Full Name",
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xfffA3A3A3),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Sign Here",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Stack(alignment: Alignment.center, children: [
                                Container(
                                  width: 350.w,
                                  height: 178.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xfffA3A3A3),
                                        width: 1.5.w,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xfffA3A3A3),
                                            spreadRadius: 0,
                                            blurRadius: 6,
                                            offset: Offset(1, 1))
                                      ]),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Signature(
                                      controller: controller,
                                      width: 350.w,
                                      height: 178.h,
                                      backgroundColor: Color(0xfffFFFFFF),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Draw or type name here",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xfffA3A3A3),
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.end,
                                ),
                              ]),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        height: 55.h,
                                        width: 145,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xfffE5E5E5),
                                            border: Border.all(
                                              color: Color(0xfffA8A8A8),
                                              width: 0.5.w,
                                            )),
                                        child: Center(
                                          child: Text(
                                            "  Cancel",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return CompleteDocumentScreen();
                                      }));
                                    },
                                    child: Container(
                                        height: 55.h,
                                        width: 145,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xfffA2E771),
                                            border: Border.all(
                                              color: Color(0xfffA8A8A8),
                                              width: 0.5.w,
                                            )),
                                        child: Center(
                                          child: Text(
                                            " Complet",
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
                    ),
                    Container(
                      height: 700.h,
                      width: 358.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Color(0xfff96D766),
                            width: 2.w,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Documenso Supporter Pledge",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff737373)),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              Text(
                                "Our mission is to create an open signing infrastructure that empowers the world.We believe openness and cooperation are the way every business should be conducted",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff737373)),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              Text(
                                "By creating an open source signing solution we want to bring these values to businesses' most fundamental act: signing. Document Signing should be open and transparent, as should all trust based products",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff737373)),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              Text(
                                "We aim to earn this trust by enabling everyone to self-host Documenso and inspect it’s inner workings. We openly share our source, knowledge, and progress while creating Documenso",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff737373)),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              Text(
                                "Exceptional products are the results of exceptional communities and we strive to create an inclusive, creative environment, open to all who choose to support our mission. We value the inputs, contributions, and perspectives of everyone in our community, even though we can't apply them all",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff737373)),
                              ),
                              SizedBox(
                                height: 50.h,
                              ),
                              Text(
                                "We are building the next generation of trust software and community the way it’s meant to be: Beautifully designed and open for all to joi",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff737373)),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Stack(alignment: Alignment.center, children: [
                                Container(
                                  width: 155.w,
                                  height: 65.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xfffA3A3A3),
                                        width: 1.5.w,
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xfffA3A3A3),
                                            spreadRadius: 0,
                                            blurRadius: 6,
                                            offset: Offset(1, 1))
                                      ]),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Signature(
                                      controller: controller,
                                      width: 152.w,
                                      height: 65.h,
                                      backgroundColor: Color(0xfffFFFFFF),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Timur Ercan",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xfffA3A3A3),
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.end,
                                ),
                              ]),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Timur Ercan & Lucas Smith",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xfff737373)),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                "Co-Founders, Documenso",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xfff737373)),
                              ),
                            ],
                          ),
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
    );
  }
}
