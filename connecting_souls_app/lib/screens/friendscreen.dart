import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';

class friendscreen extends StatelessWidget {
  const friendscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
    leading: IconButton(
    onPressed: () {
      Navigator.pushReplacementNamed(context, '/home');
    },
    icon: const Icon(Icons.arrow_back),
    ),

    foregroundColor: const Color.fromARGB(450, 23, 22, 22),
    backgroundColor: const Color.fromARGB(500, 151, 227, 154),

    title:( Text(
    'Find Friends',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 26.sp,
    fontFamily: 'Poppins',
      fontWeight: FontWeight.bold

    ),
    ))),


              body: Center(child: Column(
              children: [

              SizedBox(
                height: 100.h,
              ),
              Image.asset(
                'assets/friend.png',
                height: 294.h,
                width: 328.w,
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
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/instructions');
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
