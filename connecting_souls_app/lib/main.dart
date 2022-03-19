

import 'package:connecting_souls_app/screens/Aboutus.dart';
import 'package:connecting_souls_app/screens/Instructions.dart';
import 'package:connecting_souls_app/screens/booker.dart';
import 'package:connecting_souls_app/screens/friendscreen.dart';
import 'package:connecting_souls_app/screens/page1.dart';
import 'package:connecting_souls_app/screens/page2.dart';
import 'package:connecting_souls_app/screens/swipe.dart';
import 'package:flutter/material.dart';
import 'package:connecting_souls_app/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:connecting_souls_app/screens/home_screen.dart';
import 'package:connecting_souls_app/screens/error_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:connecting_souls_app/screens/welcomes you.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ScreenUtilInit(
      designSize: const Size(412, 732),
      builder: () => MaterialApp(
            routes: {
              '/': (context) => HomeScreen(),
              '/home': (context) => const HomeScreen(),
              '/error': (context) => const ErrorScreen(),
              '/friends': (context) => const friendscreen(),
              '/welcome': (context) => const WelcomeScreen(),
              '/aboutus': (context) => const Aboutus(),
              '/swipe': (context) => PageViewDemo(),
              '/book' : (context) => const booker(),

            },
          )));
}
