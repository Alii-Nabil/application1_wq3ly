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
    return Scaffold(
      appBar: AppBar(
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
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return NotificationsWidget();
              }));
            },
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
    );
  }
}
