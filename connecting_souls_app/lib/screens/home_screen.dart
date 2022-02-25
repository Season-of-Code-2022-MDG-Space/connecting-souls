import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(412, 732),
        builder: () => Drawer(
                child: CustomPaint(
              painter: AppBarPainter(),
              child: Column(
                children: [
                  SizedBox(
                    height: 28.h,
                  ),
                  Text(
                    'Connecting Souls',
                    style: TextStyle(
                      fontSize: 34.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Start your journey to say\n'
                    '"Goodbye loneliness, Hello happiness"',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontFamily: 'Pompiere',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  Image.asset(
                    'assets/3.png',
                    width: 305.w,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  SizedBox(
                    width: 302.w,
                    height: 45.h,
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
                        'Connect with a friend',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Roboto',
                            color: const Color.fromARGB(450, 23, 22, 22),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: 302.w,
                    height: 45.h,
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
                        'Connect with a counsellor',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Roboto',
                            color: const Color.fromARGB(450, 23, 22, 22),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
