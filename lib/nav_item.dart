import 'package:flutter/material.dart';

class NavItem {
  String label = '';
  Widget icon;

  NavItem(this.label, this.icon);

  static List<NavItem> items = [
    NavItem('Home', const Icon(Icons.home)),
    NavItem('Notification', const Icon(Icons.notifications)),
    NavItem('Profile', const Icon(Icons.person)),
  ];
  static List<Widget> pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.indigo,
    ),
  ];
}
