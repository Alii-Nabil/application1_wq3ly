import 'package:application_wq3ly/screen/OnboardingScreen3.dart';
import 'package:application_wq3ly/screen/username_screen.dart';
import 'package:application_wq3ly/widget/image_button.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signature/signature.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  bool isObscuretyText = true;
  SignatureController controller = SignatureController();

  // Color _lineColor = Colors.black;

  // void _changeColor() {
  //   setState(() {
  //     // تغيير اللون إلى لون عشوائي
  //     _lineColor =
  //         Color((0xFFFFFF + (0xfff96D766 * (1 - 0).toDouble())).toInt())
  //             .withOpacity(1.0);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Container(
            // margin: EdgeInsets.all(8),
            height: 10.h,
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
            child: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return OnboardingScreen3();
                }));
              },
              icon: Icon(
                Icons.chevron_left,
                color: Colors.green,
              ),
            ),
          ),
        ),
        title: Text(
          "WQ3LY",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              child: Container(
                height: 999.h,
                width: 358.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xfffE5E5E5),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.h,
                    horizontal: 15.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create a new account",
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
                        "Create your account and start using state-of-the-art document signing. Open and beautiful signing is within your grasp.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xfff737373),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 1.h,
                        width: 320.w,
                        color: Color(0xfffA3A3A3),
                      ),
                      SizedBox(
                        height: 20.h,
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
                        "Email",
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
                        hintText: "Enter your Email",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xfffA3A3A3),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        "Password",
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
                        hintText: "Enter your password...",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xfffA3A3A3),
                            fontWeight: FontWeight.w400),
                        isObscureText: isObscuretyText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscuretyText = !isObscuretyText;
                            });
                          },
                          child: Icon(
                            isObscuretyText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
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
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: Color(0xffA3A3A3),
                          )),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Or continue with",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFFA3A3A3)),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: Color(0xffA3A3A3),
                          )),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      ImageButton(
                        buttonText: "Continue with Google",
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                        backgroundColor: Color(0xfffFFFFFF),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return SingupScreen();
                                }));
                              },
                              child: Text(
                                "Sing up",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xfff96D766),
                                ),
                              )),
                        ],
                      ),
                      Text(
                        "Sign Decument 1/2",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xfffA3A3A3),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 5.h,
                            width: 150.w,
                            color: Color(0xfff96D766),
                          ),
                          Container(
                            height: 5.h,
                            width: 150.w,
                            color: Color(0xfff737373),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // ElevatedButton(
                      //     onPressed: () {},
                      //     //  _changeColor,
                      //     child: Text('تغيير اللون'))
                      Row(
                        children: [
                          TextButon(
                            buttonText: "Back",
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            onPressed: () {},
                            borderRadius: 6,
                            buttonWidth: 177.w,
                            backgroundColor: Colors.grey[50],
                          ),
                          TextButon(
                            buttonText: "Next",
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return UsernameScreen();
                              }));
                            },
                            borderRadius: 6,
                            buttonWidth: 177.w,
                            backgroundColor: Color(0xfffA2E771),
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
    ));
  }
}
