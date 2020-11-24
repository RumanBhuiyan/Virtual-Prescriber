import 'package:flutter/material.dart';

import './SymptomsPage.dart';
import './my_splash_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/symptoms': (context) => SymptomsPage(),
        },
        // Removing DEBUG banner from right side of App
        debugShowCheckedModeBanner: false,
        home: MySplashScreen());
  }
}
