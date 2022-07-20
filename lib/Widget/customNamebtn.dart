import 'package:flutter/material.dart';

class CustomNameBtn extends StatefulWidget {
  final String hintText;
  const CustomNameBtn({Key? key, required this.hintText}) : super(key: key);

  @override
  State<CustomNameBtn> createState() => _CustomNameBtnState();
}

class _CustomNameBtnState extends State<CustomNameBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
      ),
      child: TextField(
        cursorColor: Colors.orange.withOpacity(.5),
        cursorWidth: 2.4,
        cursorHeight: 20,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
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
