import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:virtualprescriber/home_page.dart';

class MySplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SplashScreen(
        seconds: 5,
//        title: Text(
//          'Virtual Prescriber',
//          style: TextStyle(
//            fontSize: 30.0,
//            fontWeight: FontWeight.bold,
//          ),
//        ),

        image: Image.asset(
          'assets/images/splash_screen.jpg',
        ),
        photoSize: 160.0,
        loaderColor: Colors.greenAccent,
        navigateAfterSeconds: HomePage(),
        gradientBackground: LinearGradient(
          colors: [
            Color(0xFFDA4453),
            Color(0xFF89216B),
          ],
        ),
      ),
    );
  }
}

//hudai adding this line
// Some flutter packages for loading animation
// 1.https://pub.dev/packages/circular_custom_loader
// 2.https://pub.dev/packages/progress_state_button
// 3.https://pub.dev/packages/flutter_spinkit
