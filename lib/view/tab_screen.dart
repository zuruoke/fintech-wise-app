import 'package:cashwise/utils/constants.dart';
import 'package:cashwise/view/pages/history_page/history_page.dart';
import 'package:cashwise/view/pages/home_page/home_page.dart';
import 'package:cashwise/view/pages/profile_page/profile_page.dart';
import 'package:cashwise/view/pages/settings_page/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  PageController pageController = PageController();
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  onTapChange(int pageIndex) {
    pageController.animateToPage(pageIndex,
        duration: const Duration(microseconds: 400), curve: Curves.easeIn);
  }

  whenPageChanges(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  _bottomNavigatorBar(BuildContext context) {
    return ClipRect(
        child: CupertinoTabBar(
      backgroundColor: const Color(0xFFFFFFFF),
      activeColor: appColor,
      inactiveColor: Colors.grey.shade800,
      onTap: onTapChange,
      currentIndex: _pageIndex,
      items: const [
        BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_filled,
            )),
        BottomNavigationBarItem(
            label: "Tools",
            icon: Icon(
              Icons.settings,
            )),
        BottomNavigationBarItem(
            label: "History",
            icon: Icon(
              Icons.compare_arrows_rounded,
            )),
        BottomNavigationBarItem(
            label: "Alerts",
            icon: Icon(
              Icons.notification_add,
            )),
        BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(
              Icons.person,
              size: 28,
            )),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
            children: const [
              HomePage(),
              SettingsPage(),
              HistoryPage(),
              SettingsPage(),
              ProfilePage()
            ],
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (int index) {
              whenPageChanges(index);
            }),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 3))
            ]),
            child: _bottomNavigatorBar(context)));
  }
}
