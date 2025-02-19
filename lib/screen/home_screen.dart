import 'package:application_wq3ly/screen/add_screen.dart';
import 'package:application_wq3ly/screen/documents_screen.dart';
import 'package:application_wq3ly/screen/settings_screen.dart';
import 'package:application_wq3ly/screen/teams_screen.dart';
import 'package:application_wq3ly/screen/templates_screen.dart';
import 'package:application_wq3ly/widget/notifications_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
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
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {});
          },
          children: [
            DocumentsScreen(),
            TemplatesScreen(),
            AddScreen(),
            TeamsScreen(),
            SettingsScreen(),
          ],
        ),
        bottomNavigationBar: CupertinoTabBar(
          onTap: (index) {
            _pageController.jumpToPage(index);
            setState(() {
              currentPage = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    height: 2,
                    width: 35,
                    color: currentPage == 0
                        ? Color(0xfff96D766)
                        : Color(0xfffFFFFFF),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/icon/file-signature.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              label: 'Documents',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    height: 2,
                    width: 35,
                    color: currentPage == 1
                        ? Color(0xfff96D766)
                        : Color(0xfffFFFFFF),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/icon/drop-down (1).png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              label: 'Templates',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    height: 2,
                    width: 35,
                    color: currentPage == 2
                        ? Color(0xfff96D766)
                        : Color(0xfffFFFFFF),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/icon/square-plus.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    height: 2,
                    width: 35,
                    color: currentPage == 3
                        ? Color(0xfff96D766)
                        : Color(0xfffFFFFFF),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/icon/family-pants.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              label: 'Teams',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    height: 2,
                    width: 35,
                    color: currentPage == 4
                        ? Color(0xfff96D766)
                        : Color(0xfffFFFFFF),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    'assets/icon/document-folder-gear.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
