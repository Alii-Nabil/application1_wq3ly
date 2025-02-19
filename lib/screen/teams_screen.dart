import 'package:application_wq3ly/widget/texxtfield_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamsScreen extends StatefulWidget {
  const TeamsScreen({super.key});

  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {
  bool isOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Teams",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFFF262626)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Manage all teams you are currently associated with.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFFFD4D4D4)),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      title: Container(
                        height: 370.h,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Create team",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0XFFFE4F3DD),
                                      border: Border.all(
                                          width: 2, color: Color(0XFFF96D766))),
                                  child: Image.asset(
                                    "assets/icon/cross.png",
                                    height: 28,
                                    width: 28,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Create a team to collaborate with your team members.",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFFA3A3A3),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Team Name ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFFF262626),
                                  ),
                                ),
                                Text(
                                  "*",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFFFE21205),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFourmfield(
                              hintText: "Team Name",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFFA3A3A3),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Team URL ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFFF262626),
                                  ),
                                ),
                                Text(
                                  "*",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0XFFFE21205),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFourmfield(
                              hintText: "Team URL ",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFFA3A3A3),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "A unique URL to identify your team",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFFA3A3A3),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 50.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0XFFFFFFFFF),
                                        border: Border.all(
                                          width: 1.w,
                                          color: Color(0XFFFE5E5E5),
                                        )),
                                    child: Center(
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0XFFF262626),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context, TeamsScreen());
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(builder: (context) {
                                    //   return TeamsScreen();
                                    // }));
                                  },
                                  child: Container(
                                    height: 50.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0XFFFA2E771),
                                        border: Border.all(
                                          width: 1.w,
                                          color: Color(0XFFFE5E5E5),
                                        )),
                                    child: Center(
                                      child: Text(
                                        "Create Team",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0XFFF262626),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                    height: 55.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFFE5E5E5),
                    ),
                    child: Center(
                      child: Text(
                        " Create team",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 1.h,
                width: double.infinity,
                color: Color(0XFFFE5E5E5),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 180.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1.w,
                          color: Color(0XFFFE5E5E5),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      child: Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFFFa3a3a3)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isOn = !isOn;
                          });
                        },
                        child: Container(
                          height: 50.h,
                          width: 130,
                          decoration: BoxDecoration(
                            color:
                                isOn ? Color(0XFFFF5F5F5) : Color(0XFFFF5F5F5),
                            // color: Color(0XFFFF5F5F5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Action",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: isOn
                                            ? Color(0XFFFFA3A3A3)
                                            : Colors.black,
                                        // color: Color(0XFFFA3A3A3),
                                      ),
                                    ),
                                    Text(
                                      "Pending",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: isOn
                                            ? Color(0XFFFFA3A3A3)
                                            : Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                AnimatedAlign(
                                  duration: Duration(milliseconds: 200),
                                  alignment: isOn
                                      ? Alignment.centerLeft
                                      : Alignment.centerRight,
                                  child: Container(
                                    width: 50,
                                    height: 130,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10)
                                        // shape: BoxShape.circle,
                                        ),
                                  ),
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
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.w, color: Color(0XFFFE5E5E5))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Team",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373),
                              ),
                            ),
                            SizedBox(
                              width: 90.w,
                            ),
                            Text(
                              "Role",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373),
                              ),
                            ),
                            SizedBox(
                              width: 90.w,
                            ),
                            Text(
                              "Member Since",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373),
                              ),
                            ),
                            SizedBox(
                              width: 90.w,
                            ),
                            Text(
                              "Created on",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFFF737373),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Color(0XFFFE5E5E5),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 60),
                      child: Text(
                        "No results found",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFFF262626),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Row per page",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0XFFF737373)),
                        borderRadius: BorderRadius.circular(7)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "4",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xfffA3A3A3)),
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.expand_more))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Page 1 of 1",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff525252)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/icon/left-chevron.png",
                        color: Color(0XFFF737373)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/icon/left-chevron (1).png",
                        color: Color(0XFFF737373)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      "assets/icon/right-chevron.png",
                      color: Color(0XFFF737373),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset("assets/icon/right-chevron (1).png",
                        color: Color(0XFFF737373)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
