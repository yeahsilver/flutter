import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen C'),
        elevation: 0.0,
      ),
      body: ScreenCContent(),
    );
  }
}

class ScreenCContent extends StatelessWidget {
  const ScreenCContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("This is Screen C"),
    );
  }
}
