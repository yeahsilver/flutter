import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Study'),
      ),
      body: Row(
        children: [
          Column(
            children: [
              Text("1"),
              Text("2"),
            ],
          ),
          Icon(Icons.star),
          Text('41'),
        ],
      ),
    );
  }
}
