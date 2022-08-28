import 'package:flutter/material.dart';

import '../Views/BottomNavBarViews/bottom_navbar.dart';
import 'home_page.dart';

class TYRootPage extends StatelessWidget {

  static const routerName = "/";

  const TYRootPage({Key? key}) : super(key: key);

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