import 'dart:ui';

import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  

  Statistics(
      {super.key,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 11, 0),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}
