import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pickup and Destination'),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                height: 80,
                // width: 50,

                child: Row(
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/images/cars/school.jpg',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "School Bus",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.blue,
                            ),
                            Text(
                              "5.00 . 130 Trips",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          "\$5/hour",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: 25, left: 25, top: 20, bottom: 10),
                child: Text("Trip Date and Time",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 20),
                height: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 237, 247, 255),
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "18 july,Thu",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "5:00 AM",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_right_alt,
                      size: 30,
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "25 july,Sat",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "5:00 AM",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 100, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pickup and Return",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.blue,
                          size: 15,
                        ),
                        Text(
                          "Bole Road,Addis Ababa",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: Text(
                  "Payment Details",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.all(2),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 237, 235),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    children: [
                      InvoiceDetail(left: "\$5 x 6 days", right: "\$30"),
                      SizedBox(height: 5,),
                      InvoiceDetail(left: "Trip fee", right: "\$3"),
                      SizedBox(height: 5,),
                      InvoiceDetail(left: "Discount", right: ""),
                    SizedBox(height:5),
                    Divider(color: Colors.grey,),

                    SizedBox(height: 5,),
                      InvoiceDetail(left: "Total Amaount", right: "\$33"),
                    SizedBox(height:5),
                    ],
                  ),
                ),
              ),
          SizedBox(height: 50,),
              BottomAction(),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomAction extends StatelessWidget {
  const BottomAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "\$33",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "Total Amount",
              style: TextStyle(
                  fontSize: 12,
                  // decoration: TextDecoration.lineThrough
                  ),
            ),
          ],
        ),
        Spacer(),
        FilledButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Color.fromARGB(255, 0, 122, 255)),
            minimumSize: MaterialStateProperty.all(Size(150, 50)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () => {
            Navigator.pushNamed(context, '/checkout'),
          },
          child:
              Text("Proceed to Pay", style: TextStyle(color: Colors.white)),
        ),
      ]),
    );
  }
}

class InvoiceDetail extends StatelessWidget {
   InvoiceDetail({
    super.key, required this.left,required this.right
  });
  String left;
  String right;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    left,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              right,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class InputFieled extends StatelessWidget {
  InputFieled({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromARGB(255, 255, 255, 255),
          filled: true,
          prefixIcon: Icon(Icons.location_pin),
        ),
      ),
    );
  }
}
