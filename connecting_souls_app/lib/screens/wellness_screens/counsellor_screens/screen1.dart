import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPage1Widget extends StatelessWidget {
  const MyPage1Widget({Key? key}) : super(key: key);

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
                fontSize: 20.sp,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(450, 64, 128, 86)),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Speciality: Homesickness, academics, relationship issues, low self-esteem, child abuses, and other adjustment problems',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            ' Availability : Mon to Fri',
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
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
                      color: const Color.fromARGB(
                          450, 74, 163, 72), // red as border color
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
          SizedBox(
            height: 40.h,
          ),
          Image.asset(
            'assets/12.png',
            height: 12.h,
            width: 68.w,
          ),
        ])));
  }
}
