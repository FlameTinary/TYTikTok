import 'package:flutter/material.dart';

class TYBottomNavbarCenterItem extends StatefulWidget {
  const TYBottomNavbarCenterItem({Key? key}) : super(key: key);

  @override
  State<TYBottomNavbarCenterItem> createState() => _TYBottomNavbarCenterItemState();
}

class _TYBottomNavbarCenterItemState extends State<TYBottomNavbarCenterItem> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          print('点击了中间的add符号');
        },
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),);
  }
}
