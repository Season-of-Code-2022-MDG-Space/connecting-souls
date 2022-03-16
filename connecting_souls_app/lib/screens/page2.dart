import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';

class MyPage2Widget extends StatelessWidget {
  const MyPage2Widget({Key? key}) : super(key: key);

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
                'assets/page2.png',
                height: 165.h,
                width: 162.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Mr. Ashfak Ahamed PC',
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
                        'Speciality: Addiction, positive psychology, health psychology, stress management'
                        'Availability: Mon to Fri ',
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
                          'Contact: : 7760100140 Phone Office: 4915'
                          'Email: ashfakaad@iitr.ac.in'
                          'Webex link: https://iitroorkee.webex.com/meet/ashfakaad',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                          )))),
            ])));
  }
}
