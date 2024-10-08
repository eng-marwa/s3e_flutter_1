import 'package:flutter/material.dart';
import 'package:s3e_flutter/nav_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedLabelStyle: TextStyle(color: Colors.grey[600]),
          unselectedItemColor: Colors.grey[600],
          currentIndex: _selectedItemIndex,
          onTap: (itemIndex) {
            setState(() {
              _selectedItemIndex = itemIndex;
            });
          },
          type: BottomNavigationBarType.shifting,
          items: NavItem.items
              .map(
                (e) => BottomNavigationBarItem(icon: e.icon, label: e.label),
              )
              .toList(),
        ),
        body: NavItem.pages[_selectedItemIndex]);
  }
}
