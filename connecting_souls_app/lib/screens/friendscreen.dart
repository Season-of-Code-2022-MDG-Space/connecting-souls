import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';

class friendscreen extends StatelessWidget {
  const friendscreen({Key? key}) : super(key: key);

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
                  'Find Friends',
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
                  'assets/6.png',
                  width: 53.w,
                  height: 57.h,
                ),
              ]),
              SizedBox(
                height: 140.h,
              ),
              Image.asset(
                'assets/7.png',
                height: 238.h,
                width: 309.w,
              ),
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                  height: 48.h,
                  width: 264.w,
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
                        'Request for a friend',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Roboto',
                            color: const Color.fromARGB(450, 23, 22, 22),
                            fontWeight: FontWeight.normal),
                      ))),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                  height: 48.h,
                  width: 264.w,
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
                        'Head to chat screen',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Roboto',
                            color: const Color.fromARGB(450, 23, 22, 22),
                            fontWeight: FontWeight.normal),
                      )))
            ])));
  }
}
