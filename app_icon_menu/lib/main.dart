import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // BuildContext: Widget tree에서 현재 Widget의 위치를 알 수 있는 정보 / stateless 위젯이나 state 빌드 메서드에 의해서 리턴된 위젯의 부모가 됨
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   // 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때 사용
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     // 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의한 곳
        //     print('Menu button is clicked');
        //   },
        // ),
        actions: <Widget>[
          // 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img1.heic'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('Yeeun'),
              accountEmail: Text('yeeun.dev@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
