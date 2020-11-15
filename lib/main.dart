import 'package:flutter/material.dart';

import './my_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Removing DEBUG banner from right side of App
        debugShowCheckedModeBanner: false,
        home: MySplashScreen());
  }
}
