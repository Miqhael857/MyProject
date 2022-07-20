// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_career_clinic/Authentication/phonelogin.dart';
import 'package:flutter_career_clinic/Widget/customBtn.dart';
import 'package:flutter_career_clinic/Widget/customEmailBtn.dart';
import 'package:flutter_career_clinic/Widget/customNamebtn.dart';
import 'package:flutter_career_clinic/Widget/customPasswordBtn.dart';

class PhoneSignUp extends StatelessWidget {
  const PhoneSignUp({Key? key}) : super(key: key);

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
              height: 3,
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 30,
                ),
                CustomNameBtn(hintText: "First Name"),
                SizedBox(
                  height: 10,
                ),
                CustomNameBtn(hintText: "Last Name"),
                SizedBox(
                  height: 10,
                ),
                CustomEmailBtn(hintText: "Phone Number"),
                SizedBox(
                  height: 10,
                ),
                CustomLogBtn(hintText: 'Password'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: CustomBtn(
                  text: "Sign Up", onPressed: () {}, outlineBtn: false),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text('Already have an account?',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "lato",
                          color: Colors.grey,
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PhoneLogin()));
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
              height: 25,
            ),
          ],
        ),
      )),
    );
  }
}
