import 'package:bliss/ui/screens/checkout_screen.dart';
import 'package:bliss/ui/screens/home_screen.dart';
import 'package:bliss/ui/screens/item_screen.dart';
import 'package:bliss/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Bliss());
}

class Bliss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bliss',
      routes: {
        '/homeScreen': (context) => HomeScreen(),
        '/itemScreen': (context) => ItemScreen(),
        '/checkoutScreen': (context) => CheckoutScreen()
      },
      theme: ThemeData(
        // fontFamily: 'OpenSans',
        primaryColor: Colors.white,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(),
    );
  }
}

