import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({Key? key}) : super(key: key);

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
                  'ABOUT US',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 28.w,
                ),
                Image.asset(
                  'assets/5.png',
                  width: 53.w,
                  height: 57.h,
                ),
              ]),
              SizedBox(
                height: 88.h,
              ),
              Image.asset(
                'assets/aboutus.png',
                width: 283.w,
                height: 158.h,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Wellness Center (Formerly known as\n'
                'Counselling Cell) IIT- Roorkee',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(450, 74, 163, 72)),
              ),
              SizedBox(height: 22.h),
              Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
                  Text(
                    'With today’s highly competitive environment, '
                    'it is not unusual for students of all age to experience social, '
                    'personal, or academic problems in their day to day life. The '
                    'growing pressure to excel everywhere often leads to emotional or '
                    'psychological turmoil, thus disturbing one‘s peace of mind.\n\n\n'
                    'In an institution such as IIT Roorkee, these disturbances may surface '
                    'all the more frequently, when one is away from his/her protective social '
                    'environment. There then arises a need of a mentor or a counselor- someone '
                    'you can confide in.\n\n\n'
                    'Counselling Service is to help the students to focus on and understand more clearly '
                    'the issues that concern them. This includes tackling personal, family and peer '
                    'problems as well as managing academics more responsibly.\n\n\n'
                    'Student Counsellor, a qualified therapist, provides a comfortable and confidential environment'
                    ' whereby the student is at ease to discuss anything that may be bothering him/her.\n\n'
                    'This process involves no medication, only pure interaction.\n\n\n'
                    'The counselor’s office is an open, receptive and safe forum to share any problem. '
                    'There is absolutely no stigma attached to a visit to the counselor’s office.\n\n\n'
                    'Individual counselling sessions may extend up to an hour. The service is free '
                    'of cost for the students of IIT Roorkee.\n\n\n'
                    'Remember growing is a continuous process and discussing your problems will '
                    'enable you to make mature choices and take appropriate actions.\n\n\n',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(450, 74, 163, 72)),
                  ),
                ])),
              )
            ])));
  }
}
