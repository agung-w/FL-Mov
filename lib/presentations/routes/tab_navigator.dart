import 'package:flutter/material.dart';
import 'package:movie_app/presentations/pages/in_theater_detail_page.dart';
import 'package:movie_app/presentations/pages/in_theater_page.dart';
import 'package:movie_app/presentations/pages/login_page.dart';

import '../helper/tab_item.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

// 2
class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState>? navigatorKey;
  final TabItem tabItem;

  // 3
  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.root: (context) {
        if (tabItem.index == 0) {
          return InTheaterPage(
            onPush: (materialIndex) => _push(context),
          );
        } else
          return LoginPage();
      },
      TabNavigatorRoutes.detail: (context) => const InTheaterDetailPage(
            image: "tes",
          ),
    };
  }

  // 4
  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name]!(context),
        );
      },
    );
  }

  // 5
  void _push(BuildContext context, {int materialIndex: 500}) {
    var routeBuilders = _routeBuilders(context, materialIndex: materialIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            routeBuilders[TabNavigatorRoutes.detail]!(context),
      ),
    );
  }
}
