import 'package:driver_side/Screens/main_page.dart';
import 'package:flutter/material.dart';

class cardetail extends StatelessWidget {
  const cardetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
              );
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp),
          ),
          title: Text('Your Car'),
        ),
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 13, 10, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 66),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/pictures/image 9.png',
                              ),
                            ),
                          ),
                          child: SizedBox(
                            width: 375,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 233, 0, 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFA500),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Container(
                                      width: 6,
                                      height: 6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 42),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: 335,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 8),
                                          child: Text(
                                            'Tesla Roadster',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              height: 1.6,
                                              color: Color(0xFF131313),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 18.3, 0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 0),
                                                child: Text(
                                                  '7AFH773',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    height: 1.2,
                                                    color: Color(0xFF777777),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 39),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0.5, 0, 0.5),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0.1, 4, 0.4),
                                                  width: 14,
                                                  height: 14,
                                                  child: SizedBox(
                                                    width: 13.1,
                                                    height: 12.5,
                                                    child: Image.asset(
                                                      'assets/icons/star 1.png',
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '5.00',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    height: 1.1,
                                                    color: Color(0xFF777777),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '5 Trips',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              height: 1.2,
                                              color: Color(0xFF777777),
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
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                            child: SizedBox(
                              width: 375,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Btn(Icon: 'assets/icons/calendar 1.png', title: 'Calendar'),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x0D131313),
                                      ),
                                      child: Container(
                                        width: 375,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Btn(Icon: 'assets/icons/pricing.png', title: 'Pricing & Discount'),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 17.5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x0D131313),
                                      ),
                                      child: Container(
                                        width: 375,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Btn(Icon: 'assets/icons/location.png', title: 'Location & Delivery'),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x0D131313),
                                      ),
                                      child: Container(
                                        width: 375,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  
                                  Btn(Icon: 'assets/icons/car 1.png', title: 'Delete car'),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        'Insurance',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          height: 1.6,
                                          letterSpacing: -0.2,
                                          color: Color(0xFF131313),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0x1A131313)),
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color(0xFFFFFFFF),
                                  ),
                                  child: SizedBox(
                                    width: 335,
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 12, 12.4, 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 4, 0),
                                                width: 24,
                                                height: 24,
                                                child: SizedBox(
                                                  width: 24,
                                                  height: 24,
                                                  child: Image.asset(
                                                    'assets/icons/insurance.png',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 2.5, 0, 2.5),
                                                child: Text(
                                                  'Insurance Via Travelers',
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
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 6, 0, 6),
                                            child: Text(
                                              'Read More',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                decoration:
                                                    TextDecoration.underline,
                                                height: 1,
                                                color: Color(0xFF131313),
                                                decorationColor:
                                                    Color(0xFF131313),
                                              ),
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
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 28.4, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Guidelines',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        height: 1.6,
                                        letterSpacing: -0.2,
                                        color: Color(0xFF131313),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 4.8, 8),
                                      child: Text(
                                        'NO PETS and NO SMOKING are Strictly Enforced with this rental ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.5,
                                          letterSpacing: -0.1,
                                          color: Color(0x80131313),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 4),
                                          child: Text(
                                            'If you are a smoker or 4/20 friendly and intend to smoke recreationally I highly recommend you not rent this vehicle.',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              height: 1.5,
                                              letterSpacing: -0.1,
                                              color: Color(0x80131313),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 134.9, 0),
                                          child: Text(
                                            'Read More',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 1,
                                              color: Color(0xFF131313),
                                              decorationColor:
                                                  Color(0xFF131313),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ]),
       bottomNavigationBar: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
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
                ],
              )),
        )
    );
  }
}

class Btn extends StatelessWidget {
  final String Icon;
  final String title;
  Btn({super.key, required this.Icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
         borderRadius: BorderRadius.all(
                         Radius.circular(7)),
        color: Color(0xFFEDF6FF)
      ),
      margin: EdgeInsets.fromLTRB(20, 0, 27.4, 16),
      child: SizedBox(
        width: 335,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  width: 24,
                  height: 24,
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset(
                      Icon,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      height: 1.5,
                      color: Color(0xFF131313),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 4.9, 0, 5),
              width: 24,
              height: 24,
              child: SizedBox(
                width: 8.1,
                height: 14.1,
                child: Image.asset(
                  'assets/icons/right arrow.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
