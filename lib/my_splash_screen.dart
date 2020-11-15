import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:virtualprescriber/home_page.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    //After calling this widget within 10 seconds all animation will be completed
    //and go back to home page
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Space above Doctor image
          Container(
            child: SizedBox(
              height: 100.0,
            ),
          ),
          //Doctor Image Animation
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 20, end: 250),
            duration: Duration(seconds: 2),
            builder: (context, size, child) {
              return Center(
                child: Container(
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/splash_screen.jpg",
                      width: size,
                      height: size,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
          // Virtual Prescriber Text Animation
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              width: 250.0,
              child: TextLiquidFill(
                text: 'Virtual Prescriber',
                waveColor: Color(0xff093028),
                boxBackgroundColor: Color(0xffCFDEF3),
                textStyle: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 80.0,
              ),
            ),
          ),
          // Space before Circular Progress indicator
          SizedBox(
            height: 60,
          ),
          // Circular Progress indicator
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(seconds: 5),
              builder: (context, value, child) {
                return CircularPercentIndicator(
                  radius: 95.0,
                  lineWidth: 12.0,
                  percent: value,
                  center: Text(
                    '${(value * 100).round()} %',
                    style: TextStyle(fontSize: 25),
                  ),
                  progressColor: Color(0xff41295a),
                  backgroundColor: Colors.grey,
                );
              })
        ],
      ),
    );
  }
}

// Used Packages
// 1.https://pub.dev/packages/animated_text_kit
// 2.https://pub.dev/packages/percent_indicator
