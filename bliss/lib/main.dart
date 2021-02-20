import 'package:bliss/app/ui/screens/checkout_screen.dart';
import 'package:bliss/app/ui/screens/home_screen.dart';
import 'package:bliss/app/ui/screens/item_screen.dart';
import 'package:bliss/dependencies_config.dart' as config;
import 'package:bliss/app/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  config.init();
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

