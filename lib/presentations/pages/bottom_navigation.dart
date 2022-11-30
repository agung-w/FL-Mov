import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../helper/tab_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {required this.selectedTab, required this.onSelectTab});
  final ValueChanged<TabItem> onSelectTab;
  final selectedTab;

  @override
  Widget build(BuildContext context) {
    return GNav(tabs: [
      _buildItem(TabItem.inTheater),
      _buildItem(TabItem.discover),
      _buildItem(TabItem.ticket),
      _buildItem(TabItem.profile),
    ], onTabChange: (index) => onSelectTab(TabItem.values[index]));
  }

  GButton _buildItem(TabItem tabItem) {
    return GButton(
      icon: tabIcon[tabItem]!,
      text: tabName[tabItem]!,
    );
  }
}
