import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (pageIndex) {
          _selectedPageIndex = pageIndex;
        },
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              if (_selectedPageIndex == 0) {
                _pageController.jumpToPage(2);
              } else {
                _pageController.jumpToPage(--_selectedPageIndex);
              }
            },
            child: const Icon(Icons.arrow_back),
          ),
          FloatingActionButton(
            onPressed: () {
              if (_selectedPageIndex == 2) {
                _pageController.jumpToPage(0);
              } else {
                _pageController.jumpToPage(++_selectedPageIndex);
              }
            },
            child: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
