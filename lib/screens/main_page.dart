import 'dart:math' as math;

import 'package:curved_bottom_navigation/curved_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:pim/screens/design_page.dart';
import 'package:pim/screens/edit_profile.dart';
import 'package:pim/screens/home_screen.dart';
import 'package:pim/screens/ui_view/chat.dart';
import './home_page.dart';

class MainPage extends StatefulWidget {
  static final navHeight = 68.0;
  static final fabSize = 62.0;
  static final fabMargin = 8.0;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int navPos = 0;

  @override
  Widget build(BuildContext context) {
    final double additionalBottomPadding =
        math.max(MediaQuery.of(context).padding.bottom, 0.0);

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: additionalBottomPadding +
                  MainPage.navHeight -
                  (MainPage.fabSize / 2) -
                  MainPage.fabMargin,
            ),
            child: IndexedStack(
              index: navPos,
              children: [
                HomePage(),
                HomeScreen(),
                DesignPage(),
                Chat(),
                EditProfile(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CurvedBottomNavigation(
              bgColor: Colors.green,
              fabBgColor: Colors.green,
              navHeight: MainPage.navHeight,
              fabSize: MainPage.fabSize,
              fabMargin: MainPage.fabMargin,
              selected: navPos,
              onItemClick: (i) {
                setState(() {
                  navPos = i;
                });
              },
              items: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Icon(
                  Icons.shop_two,
                  color: Colors.white,
                ),
                Icon(
                  Icons.video_call_rounded,
                  color: Colors.white,
                ),
                Icon(
                  Icons.chat_rounded,
                  color: Colors.white,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
