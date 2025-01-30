import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        backgroundColor: Color(0XFFFFAFAFA),
        elevation: 3,
        actions: [
          Container(
            height: 25.h,
            width: 25.w,
            decoration: BoxDecoration(
                color: Color(0xfffFFFFFF),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              "5",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA3A3A3)),
            )),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
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
        title: Text(
          "WQ3LY",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20.h,
            width: 20.w,
            decoration: BoxDecoration(
                color: Color(0xfffFFFFF),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text(
              "TK",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFFFA3A3A3)),
            )),
          ),
        ),
      ),
    );
  }
}
