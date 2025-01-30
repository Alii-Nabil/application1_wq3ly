import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompletedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            title: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Completed",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: Color(0xfffE4F3DD),
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
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "thilo@konzok.com",
                            style: TextStyle(color: Color(0xfffA3A3A3)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: Color(0xfffE4F3DD),
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
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "thilo@konzok.com",
                            style: TextStyle(color: Color(0xfffA3A3A3)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1.h,
                    width: double.infinity,
                    color: Color(0xfffA3A3A3),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Waiting",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: Color(0xfffD7E4F3),
                              borderRadius: BorderRadius.circular(100)),
                          child: Center(
                              child: Text(
                            "TK",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF3879C5)),
                          )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "timur@documenso.com",
                            style: TextStyle(color: Color(0xfffA3A3A3)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 35.h,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: Color(0xfffD7E4F3),
                              borderRadius: BorderRadius.circular(100)),
                          child: Center(
                              child: Text(
                            "TK",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0XFFF3879C5)),
                          )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "timur@documenso.com",
                            style: TextStyle(color: Color(0xfffA3A3A3)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      label: Text(
        "Completed",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      icon: Icon(
        Icons.check_circle_outline,
        color: Color(0xfffA2E771),
      ),
    );

    ;
  }
}
