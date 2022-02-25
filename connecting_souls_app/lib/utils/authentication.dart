import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyGoogleSignIn extends ChangeNotifier {
  final signIn = GoogleSignIn();

  bool verify = false;

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser != null && googleUser.email.contains('iitr.ac.in')) {
      _user = googleUser;
      verify = true;
    }
    await googleUser!.authentication;

    notifyListeners();
  }
}
