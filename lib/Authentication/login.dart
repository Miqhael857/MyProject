// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_career_clinic/Authentication/forgotPass.dart';
import 'package:flutter_career_clinic/Authentication/phonelogin.dart';
import 'package:flutter_career_clinic/Authentication/signup.dart';
import 'package:flutter_career_clinic/Widget/customBtn.dart';
import 'package:flutter_career_clinic/Widget/customEmailBtn.dart';
import 'package:flutter_career_clinic/Widget/customPasswordBtn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0)),
                  child: Container(
                    height: 50,
                    width: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Hey, \nLogin Now",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text('If you are new /',
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
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      'Create New',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Lato",
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CustomEmailBtn(hintText: "Email Address"),
                  SizedBox(
                    height: 5,
                  ),
                  CustomLogBtn(hintText: 'Password'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 228.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()));
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  CustomBtn(
                      text: "Sign in", onPressed: () {}, outlineBtn: false),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 2,
                    width: 80,
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
                    width: 80,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Phone(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PhoneLogin()));
                  },
                  icon: '',
                ),
              ),
            ],
          ),
        ),
      ),
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
