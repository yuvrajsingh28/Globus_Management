import 'package:flutter/material.dart';
import 'package:globus_management/Services/authService.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Dashboard/Modules/Module Selection/patients.dart';

import 'LoginPage/constants.dart';
import 'Pages/resgistration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.secularOneTextTheme()),
      debugShowCheckedModeBanner: false,
      home: AuthService().handleAuth(),
      //home: Resgistration(),
    );
  }
}
