import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Prescriber',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
        body: Center(child: Text('Home Page Content')),
      ),
    );
  }
}
