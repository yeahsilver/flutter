import 'package:flutter/material.dart';
import 'package:layout_tutorial/view/detail/first_page.dart';
import 'package:layout_tutorial/view/detail/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<String> title = [
    "Building Layout",
    "Adaptive Layout",
  ];

  void showDetail(index, title) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Tutorial"),
      ),
      body: ListView.builder(
        itemCount: title.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("${index + 1}. ${title[index]}"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailPage(title: title[index], index: index),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
