import 'package:flutter/material.dart';
import 'package:tiktok_demo/Pages/video_content_page.dart';
import 'package:tiktok_demo/Views/TopNavBar/TYTopNavbar.dart';

import 'Pages/mall_content_page.dart';
import 'Views/BottomNavBarViews/bottom_navbar.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TYBottomBarPage(),
    );
  }
}

class TYBottomBarPage extends StatelessWidget {
  const TYBottomBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TYHomePage(),
      bottomNavigationBar: BottomAppBar(
        child: TYBottomNavBar(),
      ),
    );
  }
}

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
        TabBarView(controller: _controller, children: [
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
