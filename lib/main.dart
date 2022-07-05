import 'package:flutter/material.dart';
import 'package:shikhbe_shobai/splash_screen.dart';

import 'mobile_number_screen.dart';
import 'signin_screen.dart';
import 'tutorial.dart';
import 'verification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
