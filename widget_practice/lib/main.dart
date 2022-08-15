import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Charactor card',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BBANTO"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0.0, // 앱바 그림자 표현 a
        ),
        body: Center(
          child: Column(
            // 가로축으로 가운데 정렬
            mainAxisAlignment: MainAxisAlignment.center, // 새로축으로 가운데 정렬
            children: const <Widget>[
              Text("Hello"),
              Text("Hello"),
              Text("Hello")
            ],
          ),
        ));
  }
}
