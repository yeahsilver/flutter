import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dalle demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static List<String> images = [
    'image/img1.png',
    'image/img2.png',
    'image/img3.png',
    'image/img4.png',
    'image/img5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DALL·E",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 17,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.settings,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () => debugPrint("account button is clicked"),
            icon: const Icon(
              Icons.person_rounded,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderTextView(),
            const PhotoButtonView(),
            const UploadButtonView(),
            const SizedBox(height: 32),
            Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Text(
                    "EXAMPLES",
                    style: TextStyle(
                        color: Color.fromRGBO(172, 172, 172, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    height: 0.3,
                    width: 100,
                    color: const Color.fromRGBO(172, 172, 172, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Expanded(
              child: GridView.builder(
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Image.asset(images[index]),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderTextView extends StatelessWidget {
  const HeaderTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: const [
        SizedBox(
          height: 16,
        ),
        Text(
          "Start with a detailed description",
          style: TextStyle(
              color: Color.fromRGBO(172, 172, 172, 1),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 16),
      ],
    ));
  }
}

class PhotoButtonView extends StatelessWidget {
  const PhotoButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(200),
                ),
                child: Column(
                  children: const [
                    Icon(
                      Icons.photo_camera,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () =>
                    debugPrint("Taking a picture button is clicked"),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(200),
                ),
                child: Column(
                  children: const [
                    Icon(
                      Icons.photo_album_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
                onPressed: () => debugPrint("Album button is clicked"),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class UploadButtonView extends StatelessWidget {
  const UploadButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromRGBO(233, 233, 239, 1),
              minimumSize: const Size.fromHeight(48),
              elevation: 0.0,
            ),
            onPressed: () => debugPrint("Upload button is clicked"),
            child: const Text(
              "Upload",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
