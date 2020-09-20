import 'package:flutter/material.dart';
import 'package:globus_management/LoginPage/signup.dart';
import 'package:globus_management/LoginPage/constants.dart';
import 'package:globus_management/LoginPage/login.dart';
import 'package:globus_management/Services/authService.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Option selectedOption = Option.LogIn;
  AuthService authService = AuthService();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    print(size.height);
    print(size.width);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: loading
            ? Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Loading.gif'),
                    ),
                  ),
                ),
              )
            : Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: size.width / 2,
                        color: kPrimaryColor,
                      ),
                      Container(
                          height: double.infinity,
                          width: size.width / 2,
                          color: Colors.white),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Start Managing Now !",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "It's easy and takes less efforts from you",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Icon(
                        Icons.menu,
                        color: kPrimaryColor,
                        size: 28,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.copyright,
                            color: Colors.grey,
                            size: 24,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Globus Management Copyright 2020",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),

                    //Animation 1
                    //transitionBuilder: (widget, animation) => RotationTransition(
                    //  turns: animation,
                    //  child: widget,
                    //),
                    //switchOutCurve: Curves.easeInOutCubic,
                    //switchInCurve: Curves.fastLinearToSlowEaseIn,

                    //Animation 2
                    transitionBuilder: (widget, animation) =>
                        ScaleTransition(child: widget, scale: animation),

                    child: selectedOption == Option.LogIn
                        ? LogIn(
                            onSignUpSelected: () {
                              setState(() {
                                selectedOption = Option.SignUp;
                              });
                            },
                            onLogin: (email, password) async {
                              setState(() => loading = true);
                              bool res =
                                  await authService.logIn(email, password);
                              setState(() => loading = false);
                              if (!res) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      actions: [
                                        MaterialButton(
                                          child: Text('Ok'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                      title: Text(
                                        'Invalid username and password',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                      content: Text(
                                          'The username and password combination was not correct'),
                                    );
                                  },
                                );
                              }
                            },
                          )
                        : SignUp(
                            onLogInSelected: () {
                              setState(() {
                                selectedOption = Option.LogIn;
                              });
                            },
                            onSignUp: (name, email, password) async {
                              setState(() => loading = true);
                              bool res =
                                  await authService.signUp(email, password);
                              setState(() => loading = false);
                              if (!res) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      actions: [
                                        MaterialButton(
                                          child: Text('Ok'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                      title: Text(
                                        'Error Occured',
                                        style: TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                      content: Text('Unknown error occured'),
                                    );
                                  },
                                );
                              } else {
                                //save name to database
                              }
                            },
                          ),
                  ),
                ],
              ),
      ),
    );
  }
}
