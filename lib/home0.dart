import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'App Title',
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.person,
          size: 50,
          color: Color(0xffDBE3FF),
        ),
        actions: [
          IconButton(
              onPressed: () => changeText('Share'), icon: Icon(Icons.share)),
          IconButton(
              onPressed: () => changeText('Search'),
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () => changeText('Info'), icon: Icon(Icons.info)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Hello Flutter',
              style: TextStyle(
                  color: Colors.indigo, decoration: TextDecoration.none),
            ),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }

  void changeText(String newText) {
    setState(() {
      text = newText;
    });
  }
}
