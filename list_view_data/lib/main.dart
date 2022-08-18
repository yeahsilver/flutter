import 'package:flutter/material.dart';
import 'package:list_view_data/model.dart';
import 'package:list_view_data/person_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyPage());
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> name = [
    "James",
    "John",
    "Mary",
    "Patricia",
    "Elizabeth",
    "Jennifer",
    "Linda",
  ];

  static List<String> job = [
    'dentist',
    'pharmacist',
    'school teacher',
    'IT manager',
    'account',
    'lawyer',
    'hairdresser',
  ];

  static List<String> image = [
    "image/img1.png",
    "image/img2.png",
    "image/img3.png",
    "image/img4.png",
    "image/img5.png",
    "image/img6.png",
    "image/img7.png",
  ];

  final List<Person> personData = List.generate(
    name.length,
    (index) => Person(name[index], job[index], image[index]),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: personData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                personData[index].name,
              ),
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(personData[index].image),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PersonPage(
                      person: personData[index],
                    ),
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
