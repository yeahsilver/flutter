import 'package:flutter/material.dart';
import 'package:push_named/screenA.dart';

void main() {
  runApp(const ScreenA());
}

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen A',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Screen A'),
          elevation: 0.0,
        ),
        body: const ScreenASnackBar(),
      ),
    );
  }
}
