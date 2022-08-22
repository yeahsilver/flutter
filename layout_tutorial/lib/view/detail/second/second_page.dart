import 'package:flutter/material.dart';
import 'package:layout_tutorial/model/people.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 400) {
          return const DesktopLayout();
        } else {
          return const MobileLayout();
        }
      },
    ));
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DesktopLayout(),
      color: Colors.blue,
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MobileLayout(),
      color: Colors.red,
    );
  }
}

class PersonDetail extends StatelessWidget {
  const PersonDetail({Key? key, required this.person}) : super(key: key);

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(person.name),
            Text(person.phone),
          ],
        ),
      ),
    );
  }
}
