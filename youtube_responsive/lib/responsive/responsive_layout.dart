import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobileBody,
    required this.desktopBody,
  }) : super(key: key);

  final Widget mobileBody;
  final Widget desktopBody;

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder: 기기의 크기를 알아내는 빌더
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < 800) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
