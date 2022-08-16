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
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      backgroundColor: Colors.amber[800],
      body: SafeArea(
        child: Container(
          color: Colors.pinkAccent,
          width: 100,
          height: 100,
          margin: const EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 20,
          ),
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 10.0,
          ),
          child: const Text('Hello'),
        ),
      ),
    );
  }
}
