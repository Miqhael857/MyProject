// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;
  const OptionButton(
      {Key? key, required this.text, required this.icon, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        minWidth: width,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 8,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 11,
                  fontFamily: "Lato",
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            )
          ],
        ));
  }
}
