import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';

class instructions extends StatelessWidget {
  const instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: CustomPaint(
            painter: AppBarPainter(),
            child: Column(children: [
              SizedBox(
                height: 55.h,
              ),
              SizedBox(
                width: 48.w,
              ),
              Text(
                'Instructions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 150.h,
              ),
              Text(
                '1. Use of abusive language is strictly prohibited.\n\n'
                '2.Your identity will remain completely anonymous in this platform, so don’t pretend to be someone you aren’t.\n\n'
                '3.Do not disturb other unnecesaarily.\n\n',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 200.h,
              ),
              Image.asset(
                'assets/9.png',
                width: 400.w,
                height: 6.h,
              )
            ])));
  }
}
