import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // navigateToLogin();
  }

  // navigateToLogin() async {
  //   Timer(Duration(seconds: 2), () {
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
  //             (r) => false);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    print("h:--->$h");
    print("W:--->$w");
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Text('width - $w' ),
            Text('height - $h'),

          ],
        ),
      )
    );
  }



}
