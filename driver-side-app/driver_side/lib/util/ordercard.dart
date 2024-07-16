import 'dart:ui';

import 'package:flutter/material.dart';

class orderCard extends StatelessWidget {
  final String car_img;
  final String car_name;
  final String driver_name;
  final String phone_no;
  final String date;
  final bool status;

  orderCard(
      {super.key,
      required this.car_img,
      required this.car_name,
      required this.driver_name,
      required this.phone_no,
      required this.date,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Color(0xFFF2F4F7),
        borderRadius: BorderRadius.circular(20),
      ),
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
                ),
                child: Positioned(
                  right: -25,
                  top: -1,
                  child: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
       
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          car_img,
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
                              car_name,
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
                          date,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      driver_name,
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
                                  border: Border.all(color: Color(0xFF007AFF)),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0x30007AFF),
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(8, 2, 8.9, 2),
                                  child: Text(
                                     status ? 'In Use' : 'Completed',
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
                              phone_no,
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
    );
  }
}


