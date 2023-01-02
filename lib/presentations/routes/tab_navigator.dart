import 'package:flutter/material.dart';
import 'package:movie_app/presentations/helper/tab_item.dart';
import 'package:movie_app/presentations/pages/discover_page.dart';
import 'package:movie_app/presentations/pages/in_theater_page.dart';
import 'package:movie_app/presentations/pages/not_found_page.dart';
import 'package:movie_app/presentations/pages/profile_page.dart';
import 'package:movie_app/presentations/pages/ticket_page.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  // static const String detail = '/detail';
}

// 2
class TabNavigator extends StatelessWidget {
  const TabNavigator(
      {super.key, required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState>? navigatorKey;
  final TabItem tabItem;

  // 3
  Map<String, WidgetBuilder> _routeBuilders(
    BuildContext context,
  ) {
    return {
      TabNavigatorRoutes.root: (context) {
        if (tabItem.index == 0) {
          return const InTheaterPage();
        } else if (tabItem.index == 1) {
          return const DiscoverPage();
        } else if (tabItem.index == 2) {
          return const TicketPage();
        } else if (tabItem.index == 3) {
          return const ProfilePage();
        } else {
          return const NotFoundPage();
        }
      },
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

  // // 5
  // void _push(BuildContext context) {
  //   var routeBuilders = _routeBuilders(context);

  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) =>
  //           routeBuilders[TabNavigatorRoutes.detail]!(context),
  //     ),
  //   );
  // }
}
