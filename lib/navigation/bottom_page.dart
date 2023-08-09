import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dirbbox/service/auth.dart';
import 'package:dirbbox/widgets/share_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../widgets/profile_page.dart';
import '../widgets/file_page.dart';
import '../widgets/home_page.dart';
import '../widgets/setting_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int pilih = 0;
  PageController pilihNavbar = PageController();

  bool isScroll = false;

  final List<Widget> screens = [
    HomePage(),
    FilePage(),
    ProfilePage(),
    SettingPage(),
  ];

  final icon = <IconData> [
    Icons.home_filled,
    Icons.folder,
    Icons.person,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: pilih, children: screens,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.grey[300],
        backgroundColor: Colors.white,
        onPressed: (){},
        child: Icon(Icons.add, color: Color(0xFF415EB6),),
      ),
      bottomNavigationBar:AnimatedBottomNavigationBar(
        height: 65,
        activeColor: Color(0xFF415EB6),
        inactiveColor: Colors.grey,
        iconSize: 28,
        splashColor: Colors.grey[300],
        icons: icon,
        activeIndex: pilih,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => pilih = index),
        //other params
      ),
    );
  }
}
