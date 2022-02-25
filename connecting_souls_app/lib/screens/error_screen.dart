import 'package:flutter/material.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(412, 732),
        builder: () => Drawer(
                child: CustomPaint(
              painter: AppBarPainter(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Oops! Try using a valid IITR email ID!',
                    style: TextStyle(
                      fontSize: 55.0,
                      fontFamily: 'Pompiere',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Icon(
                    Icons.report_gmailerrorred_sharp,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 302.w,
                    height: 45.h,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
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
                        'Go back to login screen',
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
    //const Text();
  }
}
