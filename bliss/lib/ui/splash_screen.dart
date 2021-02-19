import 'dart:async';
import 'package:bliss/global/colors.dart';
import 'package:bliss/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    Timer(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => HomeScreen()),
              (r) => false);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: white,
      body: Center(
          child: Image.asset('images/logo.png',)
      ),
    );
  }

}
