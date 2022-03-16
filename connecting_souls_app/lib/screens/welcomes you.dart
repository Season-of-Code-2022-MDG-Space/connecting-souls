import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: CustomPaint(
            painter: AppBarPainter(),
            child: Column(children: [
              SizedBox(
                height: 38.h,
              ),
              Row(children: [
                Image.asset(
                  'assets/4.png',
                  width: 53.w,
                  height: 57.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'WELLNESS CENTER',
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
              Text(
                'Express | Engage | Emerge',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(450, 38, 143, 74)),
              ),
              SizedBox(
                height: 88.h,
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
              Row(
                children: [
                  SizedBox(
                    width: 32.w,
                  ),
                  SizedBox(
                      height: 75.h,
                      width: 155.w,
                      child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(500, 151, 227, 154)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.w),
                              ),
                            ),
                          ),
                          child: Text(
                            'About us',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Roboto',
                                color: const Color.fromARGB(450, 38, 143, 74),
                                fontWeight: FontWeight.w600),
                          ))),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                      height: 75.h,
                      width: 155.w,
                      child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(500, 151, 227, 154)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.w),
                              ),
                            ),
                          ),
                          child: Text(
                            'Know your\n'
                            ' Counsellor',
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Roboto',
                                color: const Color.fromARGB(450, 38, 143, 74),
                                fontWeight: FontWeight.w600),
                          ))),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                  height: 84.h,
                  width: 324.w,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(500, 151, 227, 154)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
