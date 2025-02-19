import 'package:application_wq3ly/screen/add_screen.dart';
import 'package:application_wq3ly/screen/documents_screen.dart';
import 'package:application_wq3ly/screen/settings_screen.dart';
import 'package:application_wq3ly/screen/teams_screen.dart';
import 'package:application_wq3ly/screen/templates_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
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
