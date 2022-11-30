import 'package:flutter/material.dart';

enum TabItem { inTheater, discover, ticket, profile }

const Map<TabItem, String> tabName = {
  TabItem.inTheater: 'In Theater',
  TabItem.discover: 'Discover',
  TabItem.ticket: 'Ticket',
  TabItem.profile: 'Profile',
};
const Map<TabItem, IconData> tabIcon = {
  TabItem.inTheater: Icons.theaters,
  TabItem.discover: Icons.explore,
  TabItem.ticket: Icons.theaters,
  TabItem.profile: Icons.person,
};
