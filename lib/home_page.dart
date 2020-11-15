import 'package:flutter/material.dart';

import './login_register_form.dart';
import './my_analog_clock.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffe96443), Color(0xff904e95)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              MyAnalogClock(),
              SizedBox(
                height: 10,
              ),
              LoginRegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
