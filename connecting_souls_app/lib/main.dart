import 'package:flutter/material.dart';
import 'package:connecting_souls_app/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:connecting_souls_app/screens/home_screen.dart';
import 'package:connecting_souls_app/screens/error_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    routes: {
      '/': (context) => const LoginScreen(),
      '/home': (context) => const HomeScreen(),
      '/error': (context) => const ErrorScreen(),
    },
  ));
}
