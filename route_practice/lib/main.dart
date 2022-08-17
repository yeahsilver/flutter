import 'package:flutter/material.dart';
import 'package:route_practice/screen_a.dart';
import 'package:route_practice/screen_b.dart';
import 'package:route_practice/screen_c.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const ScreenA(),
        '/b': (context) => const ScreenB(),
        '/c': (context) => const ScreenC(),
      },
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}
