import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/list');
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                title: const Text('Requests'),
                centerTitle: true,
                backgroundColor: const Color.fromARGB(500, 80, 163, 72),
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 15.w),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sorry! This page is under development',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ));
  }
}
