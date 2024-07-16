import 'dart:ui';

import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String car_img;
  final String car_name;
  final String plate_no;
  final String rating;
  final String available_seats;
  final String Price;

  Cards({
    super.key,
    required this.car_img,
    required this.car_name,
    required this.plate_no,
    required this.rating,
    required this.available_seats,
    required this.Price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0x1A131313)),
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 227,
                    height: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          car_img,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 32,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/like.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),



            Container(
              margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
              child: SizedBox(
                width: 199,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: 95,
                        child: Text(
                          car_name,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            height: 1.2,
                            color: Color(0xFF131313),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                            width: 14,
                            height: 10,
                            child: SizedBox(
                              width: 13.1,
                              height: 12.5,
                              child: Image.asset(
                                'assets/icons/star 1.png',
                              ),
                            ),
                          ),
                          Text(
                            rating,
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
                  ],
                ),
              ),
            ),


            Container(
              margin: EdgeInsets.fromLTRB(14, 0, 14, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        plate_no,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          height: 1.2,
                          color: Color(0xFF777777),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 11.8, 0),
              child: SizedBox(
                width: 199.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                            width: 14,
                            height: 14,
                            child: SizedBox(
                              width: 10,
                              height: 12,
                              child: Image.asset(
                                'assets/icons/bell.png',
                              ),
                            ),
                          ),
                          Text(
                            available_seats,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              height: 1.2,
                              color: Color(0xFF131313),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          width: 14,
                          height: 14,
                          child: SizedBox(
                            width: 10,
                            height: 12,
                            child: Image.asset(
                              'assets/icons/moneybag.png',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                          child: Text(
                            '\$' + Price + '/hour',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              height: 1.2,
                              color: Color(0xFF131313),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      )
      // Container(
      //   decoration: BoxDecoration(
      //     border: Border.all(color: Color(0x1A131313)),
      //     borderRadius: BorderRadius.circular(20),
      //     color: Color(0xFFFFFFFF),
      //   ),
      //   child: Column(
         
      //     ],
        );
    //   ),
    // );
  }
}
