import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0XFFFE4F3DD),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Container(
                          width: 120.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(50),
                            ),
                            border: Border.all(
                              color: Color(0xFFA8A8A8),
                              width: 0.5.w,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "User Name",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0XFFF262626)),
                                ),
                                Text(
                                  "Personal Account",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0XFFFA3A3A3)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8,
                        child: Container(
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
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "WQ3LY",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 85,
              ),
              Icon(
                Icons.search,
                color: Color(0XFFF7AC455),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 7, left: 5),
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
          ),
        ),
      ),
    );
  }
}
