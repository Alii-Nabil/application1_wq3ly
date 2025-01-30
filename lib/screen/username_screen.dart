import 'package:application_wq3ly/screen/OnboardingScreen3.dart';
import 'package:application_wq3ly/screen/singup_screen.dart';
import 'package:application_wq3ly/widget/image_button.dart';
import 'package:application_wq3ly/widget/text_buton.dart';
import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsernameScreen extends StatefulWidget {
  UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<UsernameScreen> {
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
                  return SingupScreen();
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
                height: 358.h,
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
                        "Claim your username now",
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
                        "You will get notified & be able to set up your WQ3LY public profile when we launch the feature.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xfff737373),
                        ),
                      ),
                      SizedBox(
                        height: 15,
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
                        "Public profile username",
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
                        hintText: "Enter your Public profile username",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xfffA3A3A3),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 7.h,
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
                            height: 5,
                            width: 150,
                            color: Color(0xfff96D766),
                          ),
                          Container(
                            height: 5,
                            width: 150,
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
                            buttonWidth: 164,
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
                            buttonWidth: 164.w,
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
