import 'package:application_wq3ly/screen/home_screen.dart';
import 'package:application_wq3ly/screen/documents1_screen.dart';
import 'package:application_wq3ly/screen/documents_pdf_screen.dart';
import 'package:application_wq3ly/screen/documents_screen.dart';
import 'package:application_wq3ly/screen/duplicate_screen.dart';
import 'package:application_wq3ly/screen/home_screen.dart';
import 'package:application_wq3ly/screen/onboarding_screen1.dart';
import 'package:application_wq3ly/screen/onboarding_screen2.dart';
import 'package:application_wq3ly/screen/username_screen.dart';
import 'package:application_wq3ly/screen/welcome.dart';
import 'package:application_wq3ly/test1.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        child: HomeScreen());
  }
}
