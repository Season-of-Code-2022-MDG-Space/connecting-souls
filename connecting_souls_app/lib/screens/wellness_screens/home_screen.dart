import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              icon: const Icon(Icons.arrow_back),
            ),
            foregroundColor: const Color.fromARGB(450, 23, 22, 22),
            backgroundColor: const Color.fromARGB(500, 151, 227, 154),
            title: Row(children: [
              Column(children: [
                Text(
                  'WELLNESS CENTER',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Express | Engage | Emerge',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(450, 38, 143, 74)),
                )
              ]),
              SizedBox(
                width: 20.w,
              ),
              Image.asset(
                'assets/4.png',
                width: 53.w,
                height: 57.h,
              ),
            ])),
        body: Center(
            child: Column(children: [
          SizedBox(
            height: 48.h,
          ),
          Text("Welcomes You!!",
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
              )),
          SizedBox(
            height: 8.h,
          ),
          Image.asset(
            'assets/wellness.png',
            height: 226.h,
            width: 279.w,
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
              height: 38.h,
              width: 125.w,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/aboutus');
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.w),
                          side: const BorderSide(
                              color: Color.fromARGB(450, 38, 143, 74))),
                    ),
                  ),
                  child: Text(
                    'About us',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromARGB(450, 38, 143, 74),
                        fontWeight: FontWeight.w600),
                  ))),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
              height: 52.h,
              width: 300.w,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/swipe');
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.w),
                          side: const BorderSide(
                              color: Color.fromARGB(450, 38, 143, 74))),
                    ),
                  ),
                  child: Text(
                    'Know your'
                    ' Counsellor',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromARGB(450, 38, 143, 74),
                        fontWeight: FontWeight.w600),
                  ))),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
              height: 52.h,
              width: 300.w,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/book');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(500, 151, 227, 154)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.w),
                      ),
                    ),
                  ),
                  child: Text(
                    'Book an Appointment',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromARGB(450, 23, 22, 22),
                        fontWeight: FontWeight.normal),
                  )))
        ])));
  }
}
