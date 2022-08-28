import 'package:flutter/material.dart';
import 'package:tiktok_demo/Configs/route_config.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: TYRouteConfig.initialRoute,
      routes: TYRouteConfig.routes,
    );
  }
}
