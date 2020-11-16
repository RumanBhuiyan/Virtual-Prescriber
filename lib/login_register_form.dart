import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginRegisterForm extends StatefulWidget {
  @override
  _LoginRegisterFormState createState() => _LoginRegisterFormState();
}

class _LoginRegisterFormState extends State<LoginRegisterForm> {
  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: Duration(seconds: 3),
      curve: Curves.elasticOut,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        width: 400,
        height: 420,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/doctor_patient_1.jpg'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff11998e),
                borderRadius: BorderRadius.all(Radius.circular(25.7)),
              ),
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FaIcon(
                      FontAwesomeIcons.peopleArrows,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: 'Enter Your email',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff11998e),
                borderRadius: BorderRadius.all(Radius.circular(25.7)),
              ),
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FaIcon(
                      FontAwesomeIcons.userSecret,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                textAlign: TextAlign.center,
                obscureText: true,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
