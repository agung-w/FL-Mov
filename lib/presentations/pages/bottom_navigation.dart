import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:movie_app/bloc/ticket_bloc.dart';
import 'package:movie_app/presentations/helper/tab_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key, required this.onSelectTab});
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return GNav(
        tabs: [
          _buildItem(TabItem.inTheater),
          _buildItem(TabItem.discover),
          _buildItem(TabItem.ticket),
          _buildItem(TabItem.profile),
        ],
        onTabChange: (index) {
          onSelectTab(TabItem.values[index]);
          if (index == 2) {
            context.read<TicketBloc>().add(const TicketEvent.getTicket());
          }
        });
  }

  GButton _buildItem(TabItem tabItem) {
    return GButton(
      icon: tabIcon[tabItem]!,
      text: tabName[tabItem]!,
    );
  }
}
