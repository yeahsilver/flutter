import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen B'),
        elevation: 0.0,
      ),
      body: ScreenBContent(),
    );
  }
}

class ScreenBContent extends StatelessWidget {
  const ScreenBContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("This is Screen B"),
    );
  }
}
