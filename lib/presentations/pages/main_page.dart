import 'package:flutter/material.dart';
import 'package:movie_app/presentations/helper/tab_item.dart';
import 'package:movie_app/presentations/pages/bottom_navigation.dart';

import '../routes/tab_navigator.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _selectedIndex = TabItem.inTheater;
  final navigatorKeys = {
    TabItem.inTheater: GlobalKey<NavigatorState>(),
    TabItem.discover: GlobalKey<NavigatorState>(),
    TabItem.ticket: GlobalKey<NavigatorState>(),
    TabItem.profile: GlobalKey<NavigatorState>(),
  };
  void _onItemTapped(TabItem tabItem) {
    setState(() {
      _selectedIndex = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[_selectedIndex]!.currentState!.maybePop(),
      child: Scaffold(
        body: Center(
            child: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.inTheater),
          _buildOffstageNavigator(TabItem.discover),
          _buildOffstageNavigator(TabItem.ticket),
          _buildOffstageNavigator(TabItem.profile),
        ])),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: BottomNavigation(
              onSelectTab: _onItemTapped,
            )),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _selectedIndex != tabItem,
      child: TabNavigator(
        navigatorKey: navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
