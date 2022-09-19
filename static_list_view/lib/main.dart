import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingList(),
    );
  }
}

class SettingList extends StatelessWidget {
  const SettingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color.fromRGBO(44, 44, 44, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 40),
              child: Text(
                "Setting",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: const [
                  ListTile(
                    title: Text(
                      "Notifications",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title: Text(
                      "Notice",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title: Text(
                      "FAQ",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title: Text(
                      "Pricing",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title: Text(
                      "Terms of Service",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title: Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                  ListTile(
                    title: Text(
                      "Version",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      "1.0.0 Version",
                      style: TextStyle(color: Color.fromRGBO(235, 255, 0, 0)),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Text(
                      "1.0.0 Version",
                      style: TextStyle(
                        color: Color.fromRGBO(235, 255, 0, 1),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Delete account",
                      style: TextStyle(
                        color: Color.fromRGBO(114, 114, 141, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
