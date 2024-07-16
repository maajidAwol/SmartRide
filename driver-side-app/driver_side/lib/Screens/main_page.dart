import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:driver_side/util/cards.dart';
import 'package:driver_side/Screens/car_detail.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(padding: EdgeInsets.fromLTRB(12, 10, 12, 4), child: AppBar()),
        Padding(
          padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Cars',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  height: 1.6,
                  letterSpacing: -0.2,
                  color: Color(0xFF131313),
                ),
              ),
              Text(
                '+ Add New Car',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  height: 1.5,
                  letterSpacing: -0.1,
                  color: Color(0xFF007AFF),
                ),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(8, 10, 8, 4), child: Mycars()),
        Padding(
          padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Orders',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  height: 1.6,
                  letterSpacing: -0.2,
                  color: Color(0xFF131313),
                ),
              ),
              Container(
                width: 53,
                margin: EdgeInsets.fromLTRB(2, 1.5, 2, 1.5),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    height: 1.5,
                    letterSpacing: -0.1,
                    color: Color(0x80131313),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(12, 10, 12, 4),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF007AFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12, 4, 12.5, 4),
                      child: Text(
                        'On going',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          height: 1.5,
                          letterSpacing: -0.1,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(11, 3, 12, 3),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0x1A131313)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Next 5 Days',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 1.5,
                      letterSpacing: -0.1,
                      color: Color(0xFF131313),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      Padding(padding: EdgeInsets.fromLTRB(8, 10, 8, 4), child: Myorders()),
      Padding(padding: EdgeInsets.fromLTRB(8, 10, 8, 4), child: Myorders()),
      Padding(padding: EdgeInsets.fromLTRB(8, 10, 8, 4), child: Myorders()),
      Padding(padding: EdgeInsets.fromLTRB(8, 10, 8, 4), child: Myorders()),
      ]),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/logo/logo.png'),
              ),
            ),
          ),
          const Text(
            'Smart Ride',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/pictures/Ellipse 1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Mycars extends StatelessWidget {
  const Mycars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cardetail(),
                  ),
                );
              },
              child: Cards(
                car_img: 'assets/pictures/image 9.png',
                car_name: 'Tesla Model 3',
                plate_no: '7AFH773',
                rating: '5.0',
                available_seats: '4 seats',
                Price: '20',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cardetail(),
                  ),
                );
              },
              child: Cards(
                car_img: 'assets/pictures/image 9.png',
                car_name: 'Tesla Model Bus',
                plate_no: '7AFH773',
                rating: '5.0',
                available_seats: '4 seats',
                Price: '20',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => cardetail(),
                  ),
                );
              },
              child: Cards(
                car_img: 'assets/pictures/image 9.png',
                car_name: 'Tesla Model Bus',
                plate_no: '7AFH773',
                rating: '5.0',
                available_seats: '4 seats',
                Price: '20',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Myorders extends StatelessWidget {
  const Myorders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0x1A131313)),
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(1, 1, 14, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0x1A131313)),
                borderRadius: BorderRadius.circular(19),
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                width: 120,
                height: 112,
                child: Container(
                  width: 120,
                  height: 112,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Positioned(
                    right: -25,
                    top: -1,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/pictures/minibus.jpg',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 170,
                        height: 113,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 9, 0, 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Mini Buss',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  height: 1.2,
                                  color: Color(0xFF131313),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Due on 11 sep, 2024',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              height: 1.2,
                              color: Color(0xFF777777),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1.5, 0, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0.9, 0, 0, 4),
                          child: SizedBox(
                            width: 190,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 4, 6.8, 3.8),
                                        width: 14,
                                        height: 14,
                                        child: SizedBox(
                                          width: 8.8,
                                          height: 11.2,
                                          child: Image.asset(
                                            'assets/icons/people.png',
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Chris',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          height: 1.5,
                                          color: Color(0xFF131313),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFF007AFF)),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0x30007AFF),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(8, 2, 8.9, 2),
                                    child: Text(
                                      'In Use',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 11,
                                        height: 1.5,
                                        color: Color(0xFF007AFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 4, 5.5, 4),
                                width: 14,
                                height: 14,
                                child: SizedBox(
                                  width: 11.1,
                                  height: 11.1,
                                  child: Image.asset(
                                    'assets/icons/phone.png',
                                  ),
                                ),
                              ),
                              Text(
                                '+251-955-0877',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  height: 1.5,
                                  color: Color(0xFF131313),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
