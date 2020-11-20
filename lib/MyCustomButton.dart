import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String buttonName;
  final String email;
  final String password;

  MyCustomButton({this.buttonName, this.email, this.password});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print('Email : $email Password: $password');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: const EdgeInsets.all(0.0),
      child: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffc31432), Color(0xff240b36)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Container(
          constraints: const BoxConstraints(
              minWidth: 130.0,
              minHeight: 36.0), // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
