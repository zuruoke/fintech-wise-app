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
      onTap: onTapChange,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,
                size: 28,
                color: _pageIndex == 0 ? appColor : Colors.grey.shade800)),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                size: 28,
                color: _pageIndex == 1 ? appColor : Colors.grey.shade800)),
        BottomNavigationBarItem(
            icon: Icon(Icons.update_rounded,
                size: 28,
                color: _pageIndex == 2 ? appColor : Colors.grey.shade800)),
        BottomNavigationBarItem(
            icon: Icon(Icons.person,
                size: 28,
                color: _pageIndex == 3 ? appColor : Colors.grey.shade800)),
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
