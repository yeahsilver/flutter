import 'package:flutter/material.dart';
import 'package:layout_tutorial/building_layout.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.title, required this.index})
      : super(key: key);
  final String title;
  final int index;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: showTutorial(widget.index),
    );
  }

  Widget showTutorial(index) {
    if (index == 0) {
      return FirstPage();
    }

    return FirstPage();
  }
}
