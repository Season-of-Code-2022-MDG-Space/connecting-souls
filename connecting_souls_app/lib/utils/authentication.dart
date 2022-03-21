import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyGoogleSignIn extends ChangeNotifier {
  final signIn = GoogleSignIn();

  bool verify = false;
  late String email1;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future googleLogin() async {
    final googleUser = await GoogleSignIn().signIn();
    if (googleUser != null /*&& googleUser.email.contains('iitr.ac.in')*/) {
      _user = googleUser;
      await _firestore.collection('users').doc(_user!.id).set({
        "name": _user!.displayName,
        "email": _user!.email,
        "code": 'Anonymous #' + _user!.id.substring(0, 6),
      });
      verify = true;
      email1 = googleUser.email;
    }
    final googleAuth = await googleUser!.authentication;
    if (verify == true) {
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

      await FirebaseAuth.instance.signInWithCredential(credential);

      notifyListeners();
    }
  }

  Future googleLogout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }
}
