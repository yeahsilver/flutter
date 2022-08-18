import 'package:flutter/material.dart';
import 'package:responsive_app/mypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: const TextTheme(
            bodyText2: TextStyle(
          fontSize: 30,
          color: Colors.white,
        )),
      ),
      home: const MyPage(),
    );
  }
}
