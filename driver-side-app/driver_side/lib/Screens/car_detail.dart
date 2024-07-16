import 'package:flutter/material.dart';

class cardetail extends StatelessWidget {
  const cardetail({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 8, 0, 52),
        child: Container(
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
                  margin: EdgeInsets.fromLTRB(8, 0, 23.7, 23.1),
                  child: SizedBox(
                    width: 355,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 2.1),
                          width: 59.7,
                          height: 23.2,
                          child: SizedBox(
                            width: 27.5,
                            height: 10.7,
                            child: Image.asset(
                              'assets/vectors/image_19_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0.3, 0, 0),
                          child: SizedBox(
                            width: 73.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.4, 5.6, 0.4),
                                  child: SizedBox(
                                    width: 18.8,
                                    height: 11.8,
                                    child: Image.asset(
                                      'assets/vectors/mobile_signal_13_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5.6, 0.4),
                                  child: SizedBox(
                                    width: 16.9,
                                    height: 12.1,
                                    child: Image.asset(
                                      'assets/vectors/wifi_24_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: SizedBox(
                                    width: 26.9,
                                    height: 12.5,
                                    child: Image.asset(
                                      'assets/vectors/battery_23_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(17.4, 0, 17.4, 17),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 200.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 4, 0, 4.9),
                            width: 24,
                            height: 24,
                            child: SizedBox(
                              width: 8.1,
                              height: 14.1,
                              child: Image.asset(
                                'assets/vectors/vector_1233_x2.svg',
                              ),
                            ),
                          ),
                          Text(
                            'Your Car',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              height: 1.6,
                              letterSpacing: -0.2,
                              color: Color(0xFF131313),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                              image: NetworkImage(
                                'assets/images/dario_l_1_xwj_brsm_unsplash_1.jpeg',
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
                                              Text(
                                                'LT 4dr sedan',
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
                                                      'assets/vectors/vector_410_x2.svg',
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
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(23, 0, 27.4, 18),
                                    child: SizedBox(
                                      width: 335,
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
                                                    0, 0, 13, 0),
                                                width: 24,
                                                height: 24,
                                                child: SizedBox(
                                                  width: 18,
                                                  height: 20,
                                                  child: Image.asset(
                                                    'assets/vectors/group_24_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0.5, 0, 0.5),
                                                child: Text(
                                                  'Calendar',
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
                                            margin: EdgeInsets.fromLTRB(
                                                0, 2.9, 0, 3),
                                            width: 24,
                                            height: 24,
                                            child: SizedBox(
                                              width: 8.1,
                                              height: 14.1,
                                              child: Image.asset(
                                                'assets/vectors/vector_659_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(20, 0, 27.4, 16),
                                    child: SizedBox(
                                      width: 335,
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
                                                    0, 0, 10, 0),
                                                width: 24,
                                                height: 24,
                                                child: SizedBox(
                                                  width: 24,
                                                  height: 24,
                                                  child: Image.asset(
                                                    'assets/vectors/frame_35_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 2.5, 0, 2.5),
                                                child: Text(
                                                  'Pricing & Discount',
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
                                            margin: EdgeInsets.fromLTRB(
                                                0, 4.9, 0, 5),
                                            width: 24,
                                            height: 24,
                                            child: SizedBox(
                                              width: 8.1,
                                              height: 14.1,
                                              child: Image.asset(
                                                'assets/vectors/vector_1152_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        24.2, 0, 27.4, 18.5),
                                    child: SizedBox(
                                      width: 335,
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
                                                    0, 0.2, 14.4, 0.5),
                                                width: 24,
                                                height: 24,
                                                child: SizedBox(
                                                  width: 15.4,
                                                  height: 18.3,
                                                  child: Image.asset(
                                                    'assets/vectors/group_12_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'Location & Delivery',
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
                                            margin: EdgeInsets.fromLTRB(
                                                0, 2.4, 0, 2.5),
                                            width: 24,
                                            height: 24,
                                            child: SizedBox(
                                              width: 8.1,
                                              height: 14.1,
                                              child: Image.asset(
                                                'assets/vectors/vector_794_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(20, 0, 27.4, 16),
                                    child: SizedBox(
                                      width: 335,
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
                                                    0, 0, 10, 0),
                                                width: 24,
                                                height: 24,
                                                child: SizedBox(
                                                  width: 24,
                                                  height: 24,
                                                  child: Image.asset(
                                                    'assets/vectors/frame_36_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 2.5, 0, 2.5),
                                                child: Text(
                                                  'Trip History',
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
                                            margin: EdgeInsets.fromLTRB(
                                                0, 4.9, 0, 5),
                                            width: 24,
                                            height: 24,
                                            child: SizedBox(
                                              width: 8.1,
                                              height: 14.1,
                                              child: Image.asset(
                                                'assets/vectors/vector_1060_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
                                  Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 27.4, 0),
                                    child: SizedBox(
                                      width: 335,
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
                                                    0, 0, 10, 0),
                                                child: SizedBox(
                                                  width: 24,
                                                  height: 24,
                                                  child: Image.asset(
                                                    'assets/vectors/car_1_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 2.5, 0, 2.5),
                                                child: Text(
                                                  'Delete Car',
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
                                            margin: EdgeInsets.fromLTRB(
                                                0, 4.9, 0, 5),
                                            width: 24,
                                            height: 24,
                                            child: SizedBox(
                                              width: 8.1,
                                              height: 14.1,
                                              child: Image.asset(
                                                'assets/vectors/vector_626_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
                                                    'assets/vectors/frame_4_x2.svg',
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 19, 0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 393,
                      height: 34,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF141414),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Container(
                          width: 134,
                          height: 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
