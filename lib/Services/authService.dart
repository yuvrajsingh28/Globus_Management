import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:globus_management/AppState/appState.dart';
import 'package:globus_management/Dashboard/Modules/Module%20Selection/patients.dart';
import 'package:globus_management/LoginPage/loginPage.dart';

class AuthService {
  handleAuth(AppState appState) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return FutureBuilder(
            future: appState.initPatients(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Patients(appState: appState);
              }
              return Container(
                color: Colors.white,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Loading.gif'),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
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
