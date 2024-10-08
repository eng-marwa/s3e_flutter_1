import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Tab'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25)),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(25)),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                tabs: const [
                  Tab(
                    text: 'Tab 1',
                  ),
                  Tab(
                    text: 'Tab 2',
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    color: Colors.teal,
                  ),
                  Container(
                    color: Colors.deepPurple,
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
