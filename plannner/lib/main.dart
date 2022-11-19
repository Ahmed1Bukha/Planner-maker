import 'package:flutter/material.dart';
import 'package:plannner/Screens/intinalPages/LoginPage.dart';
import 'package:plannner/Screens/intinalPages/RegisterPage.dart';
import 'package:plannner/Screens/intinalPages/StarterPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:plannner/Screens/mainScreens/StartPlanning.dart';
import 'package:plannner/Screens/mainScreens/home.dart';
import 'Screens/mainScreens/StartPlanning2.dart';
import 'firebase_options.dart';
import 'Screens/intinalPages/test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
      '/StartPlanning': (context) => const StartPlanning1(),
      '/StartPlanning2': (context) => const StartPlanning2(),
      '/WelcomePage': (context) => const HomeView(),
    },
  ));
}
