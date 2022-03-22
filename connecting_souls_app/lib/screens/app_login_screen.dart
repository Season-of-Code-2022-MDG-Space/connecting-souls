import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:connecting_souls_app/screens/connecting_souls_login/home_screen.dart';
import 'package:connecting_souls_app/screens/connecting_souls_login/loading_screen.dart';
import 'package:connecting_souls_app/screens/connecting_souls_login/login_screen.dart';

class AppLogin extends StatelessWidget {
  const AppLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomeScreen();
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadScreen();
          } else if (snapshot.hasError) {
            return const Text(
              'Oops! looks like something went wrong',
            );
          } else {
            return const LoginScreen();
          }
        });
  }
}
