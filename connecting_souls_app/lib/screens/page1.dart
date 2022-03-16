import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';

class MyPage1Widget extends StatelessWidget {
  const MyPage1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: CustomPaint(
            painter: AppBarPainter(),
            child: Column(children: [
              SizedBox(
                height: 55.h,
              ),
              Row(children: [
                SizedBox(
                  width: 48.w,
                ),
                Text(
                  'Know Your \nCounsellors',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Image.asset(
                  'assets/10.png',
                  width: 60.w,
                  height: 60.h,
                ),
              ]),
              SizedBox(
                height: 80.h,
              ),
              Image.asset(
                'assets/page1.png',
                height: 165.h,
                width: 162.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Dr.Shika Jain',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(450, 64, 128, 86)),
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                  width: 309.w,
                  height: 109.h,
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // red as border color
                        ),
                      ),
                      child: Text(
                        'Speciality: Homesickness, academics, relationship issues, low self-esteem, child abuses, and other adjustment problems'
                        'Availability: Mon to Fri',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                        ),
                      ))),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                  width: 309.w,
                  height: 109.h,
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // red as border color
                        ),
                      ),
                      child: Text(
                          'Contact: : 9927954712 Phone Office: 4372'
                          'Email:  shikha.aad@iitr.ac.in'
                          'Webex link: https://iitroorkee.webex.com/meet/shikha.aad',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                          )))),
            ])));
  }
}
