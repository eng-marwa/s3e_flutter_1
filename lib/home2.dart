import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(controller: _controller, tabs: const [
          Tab(icon: Icon(Icons.group), text: 'Group'),
          Tab(icon: Icon(Icons.chat), text: 'Chat'),
          Tab(icon: Icon(Icons.amp_stories), text: 'Stories')
        ]),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue)
        ],
      ),
    );
  }
}
