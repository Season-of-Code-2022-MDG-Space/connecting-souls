import 'package:connecting_souls_app/screens/wellness_screens/counsellor_screens/screen1.dart';
import 'package:connecting_souls_app/screens/wellness_screens/counsellor_screens/screen2.dart';
import 'package:connecting_souls_app/screens/wellness_screens/counsellor_screens/screen3.dart';
import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
  }
}
