// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomLogBtn extends StatefulWidget {
  final String hintText;
  const CustomLogBtn({Key? key, required this.hintText}) : super(key: key);

  @override
  State<CustomLogBtn> createState() => _CustomLogBtnState();
}

class _CustomLogBtnState extends State<CustomLogBtn> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
      ),
      child: TextField(
        cursorColor: Colors.orange.withOpacity(.5),
        cursorWidth: 2.4,
        cursorHeight: 20,
        keyboardType: TextInputType.emailAddress,
        obscureText: _isVisible,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
              icon: _isVisible
                  ? Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    )
                  : Icon(
                      Icons.visibility_off,
                      color: Colors.orange.withOpacity(.5),
                    ),
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              fontSize: 18,
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 10, left: 13)),
      ),
    );
  }
}
