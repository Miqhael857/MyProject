import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_career_clinic/Authentication/landing.dart';
import 'package:flutter_career_clinic/Authentication/login.dart';
import 'package:flutter_career_clinic/Authentication/phonelogin.dart';
import 'package:flutter_career_clinic/Authentication/phonesignUp.dart';
import 'package:flutter_career_clinic/Authentication/signup.dart';
import 'package:flutter_career_clinic/Authentication/user_main.dart';
import 'package:flutter_career_clinic/CompSci/CslandingPage.dart';
import 'package:flutter_career_clinic/Profile/MyAccount.dart';
import 'package:flutter_career_clinic/Profile/Security.dart';
import 'package:flutter_career_clinic/User/homePage.dart';
import 'package:flutter_career_clinic/User/settingPage.dart';
import 'package:flutter_career_clinic/Widget/EmailMessage.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent));
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const UserMain(),
      ),
      designSize: const Size(360, 640),
    );
  }
}
