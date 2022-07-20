// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_career_clinic/Authentication/user_main.dart';
import 'package:flutter_career_clinic/User/settingPage.dart';
import 'package:flutter_career_clinic/Widget/customBtn.dart';
import 'package:flutter_career_clinic/Widget/customEmailBtn.dart';

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0, top: 15),
                child: Text(
                  'Reset password',
                  style: TextStyle(
                      fontSize: 27,
                      fontFamily: "Poppins",
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, top: 25),
                child: Text(
                  'Enter the email associated with your account \n'
                  'and we\'ll send an email with instructions to \n'
                  'reset your password ',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Lato",
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 15),
              CustomEmailBtn(hintText: 'Email address'),
              CustomBtn(text: 'Update', onPressed: () {}, outlineBtn: false)
            ],
          )
        ],
      )),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.orange.withOpacity(.5),
          )),
    );
  }
}
