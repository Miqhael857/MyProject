// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_career_clinic/Authentication/login.dart';
import 'package:flutter_career_clinic/Authentication/phonesignUp.dart';
import 'package:flutter_career_clinic/Widget/customBtn.dart';
import 'package:flutter_career_clinic/Widget/customEmailBtn.dart';
import 'package:flutter_career_clinic/Widget/customNamebtn.dart';
import 'package:flutter_career_clinic/Widget/customPasswordBtn.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Create an account",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CustomNameBtn(hintText: "First Name"),
                CustomNameBtn(hintText: "Last Name"),
                CustomEmailBtn(hintText: "Email Address"),
                SizedBox(
                  height: 7,
                ),
                CustomLogBtn(hintText: 'Password'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CustomBtn(text: "Sign Up", onPressed: () {}, outlineBtn: false),
            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('Already have an account?',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "lato",
                          color: Colors.grey,
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "lato",
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.grey,
                ),
                Text("Or continue with",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "lato",
                        color: Colors.grey,
                        fontWeight: FontWeight.w700)),
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Phone(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PhoneSignUp()));
                },
                icon: '',
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class Phone extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  const Phone({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(12),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.phone),
      ),
    );
  }
}
