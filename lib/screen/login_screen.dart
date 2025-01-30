import 'package:application_wq3ly/screen/OnboardingScreen3.dart';
import 'package:application_wq3ly/screen/singup_screen.dart';
import 'package:application_wq3ly/widget/image_button.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<LoginScreen> {
  bool isObscuretyText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                height: 575.h,
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
                        "Sign in to your account",
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
                        "Welcome back, we are lucky to have you.",
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
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xfff737373),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      TextButon(
                        buttonText: "Sign In",
                        textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        onPressed: () {},
                        backgroundColor: Color(0xfffA2E771),
                      ),
                      SizedBox(
                        height: 10.h,
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
                        height: 7.h,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
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
                      )
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
