import 'package:driver_side/Screens/car_detail.dart';
import 'package:driver_side/util/cards.dart';
import 'package:driver_side/util/ordercard.dart';
import 'package:flutter/material.dart';

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
        Padding(padding: EdgeInsets.fromLTRB(12, 10, 12, 4), child: Statistics()),
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(8, 10, 8, 4),
              child: orderCard(
                car_img: 'assets/pictures/minibus.jpg',
                car_name: 'mini bus',
                driver_name: 'chris',
                date: 'due date 7/16/2024',
                phone_no: '+251 934567890',
                status: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 10, 8, 4),
              child: orderCard(
                car_img: 'assets/pictures/minibus.jpg',
                car_name: 'mini bus',
                driver_name: 'chris',
                date: 'due date 7/16/2024',
                phone_no: '+251 934567890',
                status: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 10, 8, 4),
              child: orderCard(
                car_img: 'assets/pictures/minibus.jpg',
                car_name: 'mini bus',
                driver_name: 'chris',
                date: 'due date 7/16/2024',
                phone_no: '+251 934567890',
                status: true,
              ),
            )
          ],
        ));
  }
}

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: -341,
      child: SizedBox(
        width: 335,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    'Statistics',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 1.6,
                      letterSpacing: -0.2,
                      color: Color(0xFF131313),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [

                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0x1A131313)),
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x0A000000),
                              offset: Offset(2, 3),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 158,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 23, 0, 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      child: SizedBox(
                                        width: 30,
                                        height: 22.6,
                                        child: Image.asset(
                                          'assets/icons/people.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '20',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            height: 1.4,
                                            letterSpacing: -0.2,
                                            color: Color(0xFF131313),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.5,
                                        child: Text(
                                          'Total Customers',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            height: 1.5,
                                            color: Color(0xFF1D1F20),
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
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0x1A131313)),
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x0A000000),
                              offset: Offset(2, 3),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: SizedBox(
                          width: 157,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 18, 0, 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: SizedBox(
                                      width: 32,
                                      height: 32,
                                      child: Image.asset(
                                        'assets/icons/car 1.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          '27',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            height: 1.4,
                                            letterSpacing: -0.2,
                                            color: Color(0xFF131313),
                                          ),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.5,
                                        child: Text(
                                          'Total Orders',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            height: 1.5,
                                            color: Color(0xFF1D1F20),
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
                      ),
                    ],
                  ),
                ),

                Container (
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x1A131313)),
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0A000000),
                            offset: Offset(2, 3),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 158,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 18, 0, 18),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    child: SizedBox(
                                      width: 32,
                                      height: 32,
                                      child: Image.asset(
                                        'assets/icons/income.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$2,000',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24,
                                        height: 1.4,
                                        letterSpacing: -0.2,
                                        color: Color(0xFF131313),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                                      child: Opacity(
                                        opacity: 0.5,
                                        child: Text(
                                          'Total Income',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            height: 1.5,
                                            color: Color(0xFF1D1F20),
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
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0x1A131313)),
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x0A000000),
                            offset: Offset(2, 3),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 157,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 18, 0, 18),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    child: SizedBox(
                                      width: 32,
                                      height: 32,
                                      child: Image.asset(
                                        'assets/icons/expense.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 0, 18.6, 0),
                                      child: Text(
                                        '\$425',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24,
                                          height: 1.4,
                                          letterSpacing: -0.2,
                                          color: Color(0xFF131313),
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Text(
                                        'Total Expense',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5,
                                          color: Color(0xFF1D1F20),
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
                    ),
                  ],
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
