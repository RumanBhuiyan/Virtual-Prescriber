import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

class MyAnalogClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: AnalogClock(
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black),
              //Clock background color
              color: Colors.black,
              //Clock Shape
              shape: BoxShape.circle),
          width: 200.0,
          height: 170,
          showAllNumbers: true,
          isLive: true,
          hourHandColor: Colors.white,
          minuteHandColor: Colors.white,
          showSecondHand: true,
          numberColor: Colors.white,
          showNumbers: true,
          textScaleFactor: 1.4,
          showTicks: true,
          showDigitalClock: true,
          digitalClockColor: Colors.white,
          datetime: DateTime(2020, 1, 1, 9, 12, 15),
        ),
      ),
    );
  }
}

// Package I Used : https://pub.dev/packages/analog_clock
