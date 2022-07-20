// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmailMessage extends StatefulWidget {
  const EmailMessage({Key? key}) : super(key: key);

  @override
  State<EmailMessage> createState() => _EmailMessageState();
}

class _EmailMessageState extends State<EmailMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/email.jpg'),
            Text(
              "Check your mail",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We have sent you an account verification link",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Lato",
                  color: Colors.grey,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "(also check the Spam folder)",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Lato",
                  color: Colors.grey,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      )),
    );
  }
}
