import 'package:flutter/material.dart';

class CarDetailScreen extends StatefulWidget {
  @override
  _CarDetailScreen createState() => _CarDetailScreen();
}

class _CarDetailScreen extends State<CarDetailScreen> {
  bool isFavorite = false;
  bool isHourlyActive = false;
    // final TextEditingController _passwordcontroller = TextEditingController(text: 'kuoo1234');
  final TextEditingController _numberofseats = TextEditingController(text: '4');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Detail'),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarImage(),
            SizedBox(
              height: 20,
            ),
                  decription(),
            SizedBox( height: 20,),
            //details container
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Driver Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 235, 241, 245),
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(
                                  'assets/images/avatar.png',
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                  ),
                                  Text(
                                    '5.0',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amanuel Tadesse',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'All time star driver',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '100 Trips',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '60 Tips',
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone_in_talk_outlined,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.message_outlined,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Duration",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {
                          setState(() {
                            isHourlyActive = true;
                          });
                        },
                        icon: Icon(Icons.access_time,
                            color: isHourlyActive ? Colors.blue : Colors.black),
                        label: Text("Hourly Rent",
                            style: TextStyle(
                                color: isHourlyActive
                                    ? Colors.blue
                                    : Colors.black)),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: BorderSide(
                              color:
                                  isHourlyActive ? Colors.blue : Colors.grey),
                        ),
                      ),
                      SizedBox(width: 16), // Add some spacing between buttons
                      OutlinedButton.icon(
                        onPressed: () {
                          setState(() {
                            isHourlyActive = false;
                          });
                        },
                        icon: Icon(Icons.calendar_today,
                            color: isHourlyActive ? Colors.black : Colors.blue),
                        label: Text("Daily Rent",
                            style: TextStyle(
                                color: isHourlyActive
                                    ? Colors.black
                                    : Colors.blue)),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          side: BorderSide(
                              color:
                                  isHourlyActive ? Colors.grey : Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  SizedBox(height: 20,),
                  //the bottomsheet
                  Text(
                    "Pickup and Destination",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                  //currently here
                  ,
                  PickupandDestination(),
                  SizedBox(
                    height: 10,
                  ),
                  //danger
                  Container(
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
                      controller: _numberofseats,
                      decoration: InputDecoration(
                        
                        hintText: 'Number of Seats',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                        prefixIcon: Icon(Icons.chair),
                        suffix: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_up,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                            ),
                            SizedBox(
                              height: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  //the book now sextion
                  Container(
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
                            "\$5/hour",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "\$11.32/hour",
                            style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough),
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
                          Navigator.pushNamed(context, '/book'),
                        },
                        child: Text("Book Now",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ]),
                  ),

                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),

            //dan

            //details container
          ],
        ),
      ),
    );
  }
}

class decription extends StatelessWidget {
  const decription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
      "Description",
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    ),
        SizedBox(height: 5,),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              text: 'The yellow school bus, a symbol of education and safety, transports millions of children daily with its bright color and modern safety features, ensuring they reach school safely. ',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
              children: [
                TextSpan(
                  text: 'Read more',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
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

class PickupandDestination extends StatelessWidget {
  const PickupandDestination({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
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
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            size: 20,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Bole Road, Piassa',
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/location'); // Replace '/nextPage' with the route name of the page you want to navigate to.
            },
            style: TextButton.styleFrom(
              primary: Colors.blue, // This sets the icon and text color to blue.
            ),
            child: Row(
              children: [
                Text('Change'),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NumberOfCarsInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
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
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            size: 20,
          ),
          SizedBox(width: 10),
          TextField(
            decoration: InputDecoration(
              hintText: 'Number of seats',
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.keyboard_arrow_up,
                size: 25,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                size: 25,
              )
            ],
          )
        ],
      ),
    );
  }
}

class CarImage extends StatelessWidget {
  const CarImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 2,
        //     blurRadius: 5,
        //     offset: Offset(0, 3),
        //   ),
        // ],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/cars/school.jpg',
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'School Bus',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.monetization_on,
                      size: 20,
                    ),
                    Text('\$5/hour',
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Text(
                      '5.0',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      ". 7 Trips",
                    )
                  ],
                ),

                // SizedBox(height: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
