import 'package:connecting_souls_app/UI/custom_canvas_paint.dart';
import 'package:connecting_souls_app/utils/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyGoogleSignIn(),
      child: Builder(
        builder: (context) => Drawer(
          child: CustomPaint(
            painter: LoginAppBarPainter(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  height: 25.h,
                ),
                Text(
                    //' "The slogan comes here" ',
                    'This application is for IIT-R Junta to help\n '
                    'you connect to wellness center of IIT-R and\n'
                    ' your fellow mates and seniors \n'
                    '(anonymously) to prevent privacy issue \n'
                    'while sharing anything.',
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(400, 11, 10, 10),
                    ),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 8.h,
                ),
                Image.asset(
                  'assets/1.png',
                  width: 270.w,
                ),
                SizedBox(
                  width: 302.w,
                  child: TextButton(
                    onPressed: () async {
                      final provider =
                          Provider.of<MyGoogleSignIn>(context, listen: false);
                      await provider.googleLogin();
                      if (provider.verify == true) {
                        Navigator.pushReplacementNamed(context, '/home');
                      } else {
                        Navigator.pushReplacementNamed(context, '/error');
                      }
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login with Google',
                          style: TextStyle(
                              fontSize: 23.sp,
                              fontFamily: 'Roboto',
                              color: const Color.fromARGB(450, 23, 22, 22),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Image.asset(
                          'assets/2.png',
                          width: 36.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
