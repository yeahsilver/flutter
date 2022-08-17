import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen A"),
        elevation: 0.0,
      ),
      body: const SnackBars(),
    );
  }
}

class SnackBars extends StatelessWidget {
  const SnackBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          MoveToScreenBSnackBar(),
          MoveToScreenCSnackBar(),
        ],
      ),
    );
  }
}

class MoveToScreenBSnackBar extends StatelessWidget {
  const MoveToScreenBSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Go to Screen B"),
        onPressed: () {
          Navigator.pushNamed(context, '/b');
        },
      ),
    );
  }
}

class MoveToScreenCSnackBar extends StatelessWidget {
  const MoveToScreenCSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Go to Screen C"),
        onPressed: () {
          Navigator.pushNamed(context, '/c');
        },
      ),
    );
  }
}
