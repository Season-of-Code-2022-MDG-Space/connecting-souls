import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPage2Widget extends StatelessWidget {
  const MyPage2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/welcome');
              },
              icon: const Icon(Icons.arrow_back),
            ),
            foregroundColor: const Color.fromARGB(450, 23, 22, 22),
            backgroundColor: const Color.fromARGB(500, 151, 227, 154),
            title: (Text(
              'Know Your Counsellor',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ))),
        body: Center(
            child: Column(children: [
          SizedBox(
            height: 40.h,
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
                fontSize: 20.sp,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(450, 64, 128, 86)),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Speciality: Addiction, positive psychology, health psychology, stress management',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'Availibility: Mon to Fri',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          SizedBox(
              width: 309.w,
              height: 109.h,
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(
                          450, 74, 163, 72), // red as border color
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
          SizedBox(
            height: 40.h,
          ),
          Image.asset(
            'assets/13.png',
            height: 12.h,
            width: 68.w,
          ),
        ])));
  }
}
