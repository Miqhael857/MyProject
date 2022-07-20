// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_career_clinic/Authentication/forgotPass.dart';
import 'package:flutter_career_clinic/Authentication/phonesignUp.dart';
import 'package:flutter_career_clinic/Widget/customBtn.dart';
import 'package:flutter_career_clinic/Widget/customEmailBtn.dart';
import 'package:flutter_career_clinic/Widget/customPasswordBtn.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
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
                height: 3,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhoneSignUp()));
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
                height: 30,
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CustomEmailBtn(hintText: "Phone Number"),
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
                height: 35,
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
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
