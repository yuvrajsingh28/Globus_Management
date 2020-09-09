import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globus_management/LoginPage/loginPage.dart';
import 'package:globus_management/Pages/FaceSheet.dart';

class AuthService {
  handleAuth() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return FaceSheet();
        } else {
          return LoginPage();
        }
      },
    );
  }

  logIn(String email, String password) async {
    UserCredential result = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    if (result.user == null) return false;

    return true;
  }

  signUp(String email, String password) async {
    UserCredential result = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    return true;
  }

  signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
