import 'package:flutter/material.dart';
import 'dart:async';
import 'logIn.dart';

class Splash extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  _navigateToHomeScreen() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Choose your background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(height: 600,width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/splash2.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

