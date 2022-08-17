import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to my app",
          body:
              '''This is the first page\nWe are making on-boarding screens\nIt is Interesting''',
          image: Image.asset('image/img1.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Welcome to my app",
          body:
              '''This is the second page\nWe are making on-boarding screens\nIt is Interesting''',
          image: Image.asset('image/img2.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Welcome to my app",
          body:
              '''This is the third page\nWe are making on-boarding screens\nIt is Interesting''',
          image: Image.asset('image/img3.png'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text("Done"),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MyPage(),
          ),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('Skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.grey,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      curve: Curves.linear,
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w300,
      ),
      imagePadding: EdgeInsets.only(top: 40),
      // pageColor: Colors.brown,
    );
  }
}
