import 'package:flutter/material.dart';
import 'package:push_named/screenB.dart';
import 'package:push_named/screenC.dart';

class ScreenASnackBar extends StatelessWidget {
  const ScreenASnackBar({Key? key}) : super(key: key);

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
        child: const Text('Go to sreen B'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenB(),
            ),
          );
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
        child: const Text('Go to sreen C'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenC(),
            ),
          );
        },
      ),
    );
  }
}
