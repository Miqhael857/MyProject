// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool outlineBtn;
  CustomBtn(
      {required this.text, required this.onPressed, required this.outlineBtn});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    bool _outlinebtn = outlineBtn;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Text(
          text,
          style: TextStyle(
              color: _outlinebtn ? Colors.black : Colors.white,
              fontSize: 18,
              fontFamily: "Lato",
              fontWeight: FontWeight.w700),
        ),
        height: 50.0,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        decoration: BoxDecoration(
            color: _outlinebtn ? Colors.grey : Colors.orange.withOpacity(.5),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
                color:
                    _outlinebtn ? Colors.white : Colors.orange.withOpacity(.5),
                width: 0.0)),
      ),
    );
  }
}
