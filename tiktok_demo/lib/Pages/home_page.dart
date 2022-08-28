import 'package:flutter/material.dart';
import 'package:tiktok_demo/Pages/video_content_page.dart';

import '../Views/TopNavBar/TYTopNavbar.dart';
import 'mall_content_page.dart';

class TYHomePage extends StatefulWidget {
  const TYHomePage({Key? key}) : super(key: key);

  @override
  State<TYHomePage> createState() => _TYHomePageState();
}

class _TYHomePageState extends State<TYHomePage>
    with SingleTickerProviderStateMixin {
  final List<String> _tabTitleList = ['商城', '推荐'];
  late TabController _controller;

  @override
  initState() {
    super.initState();
    _controller = TabController(
        length: _tabTitleList.length, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TabBarView(controller: _controller, children: const [
          TYMallContentPage(),
          TYVideoContentPage(),
        ]),
        TYTopNavbar(
          controller: _controller,
          titles: _tabTitleList,
        ),
      ],
    );
  }
}