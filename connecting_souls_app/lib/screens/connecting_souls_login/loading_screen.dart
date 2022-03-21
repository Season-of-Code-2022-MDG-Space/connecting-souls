import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadScreen extends StatelessWidget {
  const LoadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: SpinKitRotatingCircle(
        color: Color.fromARGB(500, 151, 227, 154),
        size: 100.0,
      ),
    ));
  }
}
