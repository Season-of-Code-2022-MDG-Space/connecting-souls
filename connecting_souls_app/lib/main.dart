import 'package:connecting_souls_app/screens/wellness_screens/about_us_screen.dart';
import 'package:connecting_souls_app/screens/friends_screens/instructions_screen.dart';
import 'package:connecting_souls_app/screens/wellness_screens/success_screen.dart';
import 'package:connecting_souls_app/screens/wellness_screens/booking_screen.dart';
import 'package:connecting_souls_app/screens/friends_screens/home_screen.dart';
import 'package:connecting_souls_app/screens/wellness_screens/counsellor_screens/swipe_screen.dart';
import 'package:flutter/material.dart';
import 'package:connecting_souls_app/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:connecting_souls_app/screens/home_screen.dart';
import 'package:connecting_souls_app/screens/error_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/screens/wellness_screens/home_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ScreenUtilInit(
      designSize: const Size(412, 732),
      builder: () => MaterialApp(
            routes: {
              '/': (context) => const LoginScreen(),
              '/home': (context) => const HomeScreen(),
              '/error': (context) => const ErrorScreen(),
              //Friends Screens
              '/friends': (context) => const FriendScreen(),
              '/instructions': (context) => const Instructions(),
              //Counsellor Screens
              '/welcome': (context) => const WelcomeScreen(),
              '/aboutus': (context) => const Aboutus(),
              '/swipe': (context) => const PageViewDemo(),
              '/book': (context) => const Booker(),
              '/success': (context) => const Success(),
            },
          )));
}
