// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_career_clinic/User/settingPage.dart';
import 'package:flutter_career_clinic/Widget/customBtn.dart';
import 'package:flutter_career_clinic/Widget/customEmailBtn.dart';
import 'package:flutter_career_clinic/Widget/customNamebtn.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        reverse: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 13),
              child: Text(
                'Account Info',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            CustomNameBtn(hintText: 'First Name'),
            CustomNameBtn(hintText: 'Last Name'),
            CustomEmailBtn(hintText: 'Email Address'),
            SizedBox(
              height: 20,
            ),
            CustomBtn(text: 'Update', onPressed: () {}, outlineBtn: false)
          ],
        ),
      )),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.orange.withOpacity(.5),
          )),
      title: Text(
        'User Info',
        style: TextStyle(
            fontSize: 20,
            fontFamily: "Poppins",
            color: Colors.black,
            fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
    );
  }
}
