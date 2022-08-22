import 'package:flutter/material.dart';
import 'package:layout_tutorial/view/detail/first/first_page.dart';
import 'package:layout_tutorial/view/detail/second/second_page.dart';

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
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w300,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: showTutorial(widget.index),
    );
  }

  Widget showTutorial(index) {
    if (index == 0) {
      return const FirstPage();
    } else if (index == 1) {
      return const SecondPage();
    }

    return const FirstPage();
  }
}
