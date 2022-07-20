// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_career_clinic/User/chatPage.dart';
import 'package:flutter_career_clinic/User/homePage.dart';
import 'package:flutter_career_clinic/User/settingPage.dart';

class UserMain extends StatefulWidget {
  const UserMain({Key? key}) : super(key: key);

  @override
  State<UserMain> createState() => _UserMainState();
}

class _UserMainState extends State<UserMain> {
  int _selectedIndex = 0;

  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ChatPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 3.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              size: 25,
            ),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 25,
            ),
            label: 'settings',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange.withOpacity(.5),
        onTap: _onItemTapped,
      ),
    );
  }
}
