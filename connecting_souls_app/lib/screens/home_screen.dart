import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/utils/authentication.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return ChangeNotifierProvider(
        create: (context) => MyGoogleSignIn(),
        child: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    foregroundColor: const Color.fromARGB(450, 23, 22, 22),
                    backgroundColor: const Color.fromARGB(500, 151, 227, 154),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    centerTitle: true,
                    actions: [
                      PopupMenuButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 35.w),
                          icon: Icon(
                            Icons.person,
                            size: 40.w,
                          ),
                          itemBuilder: (context) => [
                                PopupMenuItem(
                                  child: Center(
                                    child: Text(
                                      'Hi \n' + user.displayName! + ' !',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                  ),
                                ),
                                PopupMenuItem(
                                    onTap: () async {
                                      final provider =
                                          Provider.of<MyGoogleSignIn>(context,
                                              listen: false);
                                      await provider.googleLogout();
                                      Navigator.pushReplacementNamed(
                                          context, '/');
                                    },
                                    child: Center(
                                      child: Text(
                                        'Logout',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    )),
                              ])
                    ],
                  ),
                  body: Center(
                    child: Column(
                      children: [
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
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
                  ),
                )));
  }
}
