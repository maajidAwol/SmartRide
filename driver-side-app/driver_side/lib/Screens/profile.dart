import 'dart:ui';
import 'package:driver_side/Screens/main_page.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),);
          },
          icon: Icon(Icons.arrow_back_ios_new_sharp),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/pictures/Ellipse 1.png'),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 7, 0, 7.5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                    child: Text(
                                      'Felicia Lopez',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        height: 1.6,
                                        color: Color(0xFF131313),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        'Joined Sep 2020',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.2,
                                          color: Color(0xFF777777),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Btn(title: 'Account'),
                        Btn(title: 'Transaction History'),
                        Btn(title: 'Contact Support'),
                        Btn(title: 'Log Out'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.only(top:10),
      child:Container(
        height: 70,
            decoration: BoxDecoration(
              color: Color(0xFF98A2B3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 4.4, 0, 4.5),
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      'assets/icons/home 2.png',
                      width: 8.1,
                      height: 14.1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 4.4, 0, 4.5),
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      'assets/icons/person.png',
                      width: 8.1,
                      height: 14.1,
                    ),
                  ),
              ]
              ,
            )
          ), )
    );
  }
}

class Btn extends StatelessWidget {
  final String title;
  Btn({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 20, 27.5, 0),
      child: SizedBox(
        width: 335,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                height: 1.6,
                color: Color(0xFF131313),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 4.4, 0, 4.5),
              width: 24,
              height: 24,
              child: Image.asset(
                'assets/icons/right arrow.png',
                width: 8.1,
                height: 14.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
