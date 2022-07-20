// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_career_clinic/CompSci/Csmodel.dart';

class Cscourse extends StatelessWidget {
  final CsModel csModel;
  const Cscourse({
    Key? key,
    required this.csModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  height: 200,
                  width: 330,
                  decoration: BoxDecoration(
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 1),
                          blurRadius: 6.0,
                        )
                      ],
                      // ignore: prefer_const_literals_to_create_immutable

                      image: DecorationImage(
                          image: AssetImage(csModel.imageUrl),
                          fit: BoxFit.fill),
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  'About Course:',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Lato",
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  csModel.description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: "Lato",
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
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
      title: Text(
        csModel.title,
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
