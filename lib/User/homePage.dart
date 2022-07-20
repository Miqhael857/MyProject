// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:flutter_career_clinic/CompSci/CslandingPage.dart';
import 'package:flutter_career_clinic/model/category.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 15, top: 50, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Welcome,",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Lato",
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Ayorinde Michael",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 7),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F7),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  cursorColor: Colors.orange.withOpacity(.5),
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Search for anything',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Text(
                'Courses',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CsLandingPage()));
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 1),
                                blurRadius: 6.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                image: AssetImage('assets/images/CS.jpg'),
                                alignment: Alignment.topCenter),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                'Computer Science',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        height: 220,
                        width: 200,
                        margin: EdgeInsets.all(5),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 1),
                              blurRadius: 6.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage('assets/images/CS.jpg'),
                              alignment: Alignment.topCenter),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,

                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Information Technology',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      height: 220,
                      width: 200,
                      margin: EdgeInsets.all(5),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 1),
                              blurRadius: 6.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage('assets/images/CS.jpg'),
                              alignment: Alignment.topCenter),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'Computer Engineering',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      height: 220,
                      width: 200,
                      margin: EdgeInsets.all(5),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(padding: const EdgeInsets.only(left: 20)),
              Text(
                "Popular Course",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 7,
              ),
              SizedBox(
                height: 800,
                child: ListView.separated(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        // ignore: prefer_const_literals_to_create_immutables
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 1),
                                blurRadius: 6.0,
                              ),
                            ],
                            color: Colors.white),
                        height: 80,
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
        ),
      )),
    );
  }
}
