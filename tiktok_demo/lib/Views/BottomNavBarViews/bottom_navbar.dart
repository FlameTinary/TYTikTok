import 'package:flutter/material.dart';

import 'bottom_navbar_centerItem.dart';
import 'bottom_navbar_item.dart';

class TYBottomNavBar extends StatefulWidget {
  const TYBottomNavBar({Key? key}) : super(key: key);

  @override
  State<TYBottomNavBar> createState() => _TYBottomNavBarState();
}

class _TYBottomNavBarState extends State<TYBottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getBottomNavbarItem('首页', 0),
          getBottomNavbarItem('朋友', 1),
          const TYBottomNavbarCenterItem(),
          getBottomNavbarItem('消息', 2),
          getBottomNavbarItem('我', 3),
        ],
      ),
    );
  }

  getBottomNavbarItem(String title, int index) {
    return TYBottomNavbarItem(
      title,
      isSelected: _currentIndex == index,
      callback: () {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
