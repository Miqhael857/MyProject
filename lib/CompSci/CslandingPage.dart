// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_career_clinic/CompSci/Cscourses.dart';
import 'package:flutter_career_clinic/CompSci/Csmodel.dart';
import 'package:flutter_career_clinic/Widget/optionbtn.dart';

class CsLandingPage extends StatefulWidget {
  const CsLandingPage({Key? key}) : super(key: key);

  @override
  State<CsLandingPage> createState() => _CsLandingPageState();
}

class _CsLandingPageState extends State<CsLandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Container(
                    height: 250,
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
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/CS.jpg'),
                          alignment: Alignment.topCenter,
                        ),
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: _buildcourse(),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: _builddescription(),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Course Content",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: "Lato",
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )),
                SizedBox(
                  height: 800,
                  child: ListView.separated(
                    itemCount: csmodel.length,
                    itemBuilder: (context, index) {
                      CsModel csModel = csmodel[index];
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Cscourse(csModel: csModel)));
                          },
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            // ignore: prefer_const_literals_to_create_immutables
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(csModel.imageUrl),
                                    alignment: Alignment.centerLeft),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 1),
                                    blurRadius: 6.0,
                                  ),
                                ],
                                color: Colors.white),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // SizedBox(
                                //   height: 15,
                                // ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 130),
                                  child: Text(
                                    csModel.title,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: "Lato",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),

                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.orangeAccent),
                              ],
                            ),
                            height: 80,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                  ),
                ),
              ],
            ),
            // Positioned(
            //     top: 10,
            //     child: Icon(
            //       Icons.arrow_back_ios,
            //       color: Colors.black,
            //     ))
            Positioned(
                top: 20,
                left: 20,
                child: OptionButton(
                    text: 'Back', icon: Icons.arrow_back_ios, width: 2)),
          ],
        ),
      )),
    );
  }
}

class _builddescription extends StatelessWidget {
  const _builddescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Computer Science is the study of computers and systems,\n'
      'Unlike electrical and computer engineers, computer scientists deal '
      'mostly with software and software systems; this includes their theory,'
      'design, development, and application.',
      style: TextStyle(
          fontSize: 12,
          fontFamily: "Lato",
          color: Colors.grey,
          fontWeight: FontWeight.w500),
    );
  }
}

class _buildcourse extends StatelessWidget {
  const _buildcourse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Computer Science',
      style: TextStyle(
          fontSize: 20,
          fontFamily: "Poppins",
          color: Colors.black,
          fontWeight: FontWeight.w500),
    );
  }
}
