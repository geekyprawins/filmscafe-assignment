import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

import 'package:filmscafe_task/utils/helper.dart';

class AuthHelper extends ChangeNotifier {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final firebaseAuth = FirebaseAuth.instance;

  GoogleSignInAccount? _user;

  GoogleSignInAccount get user => _user!;

  Future googleSignIn() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return;
    _user = googleUser;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credentials = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    final _signedInUser =
        await FirebaseAuth.instance.signInWithCredential(credentials);

    return _signedInUser;
  }

  Future signInEmailPassword(
      BuildContext context, String email, String password) async {
    Helper.showLoaderDialog(context);
    firebaseAuth
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((valueUser) {
      if (valueUser.user != null) {
        Navigator.pop(context);
        return Navigator.pushNamed(context, "home-screen");
      } else {}
    });
  }

  Future signUpEmailPassword(
      BuildContext context, String email, String password) async {
    //implement sign up
    Helper.showLoaderDialog(context);
    firebaseAuth
        .createUserWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      if (value.user != null) {
        firebaseAuth
            .signInWithEmailAndPassword(
          email: email,
          password: password,
        )
            .then((value) {
          Navigator.pop(context);
          return Navigator.pushNamed(context, "home-screen");
        });
      }
    });
  }
}
