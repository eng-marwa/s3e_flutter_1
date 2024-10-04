import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Title'),
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.teal,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              indicatorWeight: 5,
              tabs: [
                Tab(icon: Icon(Icons.group), text: 'Group'),
                Tab(icon: Icon(Icons.chat), text: 'Chat'),
                Tab(
                  icon: Icon(Icons.amp_stories),
                  text: 'Stories',
                )
              ],
            ),
          ),
          body: TabBarView(
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
        ));
  }
}
