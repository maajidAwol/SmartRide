import 'package:flutter/material.dart';

class CarDetailScreen extends StatefulWidget {
  @override
  _CarDetailScreen createState() => _CarDetailScreen();
}

class _CarDetailScreen extends State<CarDetailScreen> {
  bool isFavorite = false;
  bool isHourlyActive = false;

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
              //details container
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Driver Details",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '5.0',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Trips',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '7 Trips',
                                style: TextStyle(
                                  fontSize: 15,
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
                      style:
                          TextStyle(fontSize: 20, 
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
  children: [
    OutlinedButton.icon(
      
      onPressed: () {
        setState(() {
          isHourlyActive = true;
        });
      },
      icon: Icon(Icons.access_time, color: isHourlyActive ? Colors.blue : Colors.black),
      label: Text("Hourly Rent", style: TextStyle(color: isHourlyActive ? Colors.blue : Colors.black)),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        
          
        ),
        side: BorderSide(
          color: isHourlyActive ? Colors.blue : Colors.grey),
      ),
    ),
    SizedBox(width: 16), // Add some spacing between buttons
    OutlinedButton.icon(
      onPressed: () {
        setState(() {
          isHourlyActive = false;
        });
      },
      icon: Icon(Icons.calendar_today, color: isHourlyActive ? Colors.black : Colors.blue),
      label: Text("Daily Rent", style: TextStyle(color: isHourlyActive ? Colors.black : Colors.blue)),
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: BorderSide(color: isHourlyActive ? Colors.grey : Colors.blue),
      ),
    ),
  ],
),
SizedBox(height: 15,),
                  Text(
                      "Pickup and Destination",
                      style:
                          TextStyle(fontSize: 20, 
                          fontWeight: FontWeight.bold),
                    )
                    //currently here

                    
                    
                    
                    ,
                  ],
                ),
                
              ),
              

              //details container
            ],
          ),
        ));
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
                  'assets/images/cars/car2.png',
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
                      'BMW',
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
                    Text('\$28/hour',
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
