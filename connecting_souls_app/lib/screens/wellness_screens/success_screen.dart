import 'package:flutter/material.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: CustomPaint(
        painter: AppBarPainter(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Your Appointment has successfully been booked!!',
              style: TextStyle(
                fontSize: 55.sp,
                fontFamily: 'Pompiere',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.h,
            ),
            Icon(
              Icons.check_box,
              size: 100.w,
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 302.w,
              height: 45.h,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
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
                  'Go back to home screen',
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
      ),
    );
    //const Text();
  }
}
