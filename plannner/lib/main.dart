import 'package:flutter/material.dart';
import 'package:plannner/Screens/intinalPages/LoginPage.dart';
import 'package:plannner/Screens/intinalPages/RegisterPage.dart';
import 'package:plannner/Screens/intinalPages/StarterPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/Start',
    routes: {
      '/Start': (context) => const startPage(),
      '/Login': (context) => const LoginIn(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/Register': (context) => const Register(),
    },
  ));
}
