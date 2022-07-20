// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_career_clinic/Profile/MyAccount.dart';
import 'package:flutter_career_clinic/Profile/Security.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 55,
          ),
          Text(
            'Profile',
            style: TextStyle(
                fontSize: 20,
                fontFamily: "Poppins",
                color: Colors.black,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 114,
            width: 114,
            child: Stack(
              fit: StackFit.expand,
              clipBehavior: Clip.none,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage(
                    'assets/images/icons-male9.png',
                  ),
                ),
                Positioned(
                  right: -12,
                  bottom: 0,
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      color: Colors.blue,
                      child: Image.asset(
                        'assets/images/image-plus.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // ignore: deprecated_member_use
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => MyAccount())));
                },
                child: Row(
                  children: [
                    Image.asset('assets/images/avatar.png', scale: 25),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "My Account",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Lato",
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffFFA500),
                    )
                  ],
                )),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // ignore: deprecated_member_use
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Security())));
                },
                child: Row(
                  children: [
                    Image.asset('assets/images/lock.png', scale: 25),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "Security",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Lato",
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffFFA500),
                    )
                  ],
                )),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // ignore: deprecated_member_use
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset('assets/images/bell.png', scale: 25),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Lato",
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffFFA500),
                    ),
                  ],
                )),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // ignore: deprecated_member_use
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logout.png',
                      scale: 25,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Lato",
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    // Icon(
                    //   Icons.arrow_forward_ios,
                    //   color: Color(0xffFFA500),
                    // ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
