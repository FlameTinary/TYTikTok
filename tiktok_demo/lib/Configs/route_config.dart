import '../Pages/root_page.dart';

class TYRouteConfig {
  // 默认路由
  static const initialRoute = TYRootPage.routerName;

  // 路由列表
  static final routes = {
    TYRootPage.routerName: (ctx) => const TYRootPage(),
  };

}