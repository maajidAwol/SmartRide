import 'package:flutter/material.dart';
import 'package:smart_ride_app/Screens/home/cardetail.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, String>> iconTextPairs = [
    {'image': 'assets/images/type/all.png', 'text': 'All'},
    {'image': 'assets/images/type/minibus.png', 'text': 'Mini Bus'},
    {'image': 'assets/images/type/bus.png', 'text': 'Bus'},
    {'image': 'assets/images/type/automobile.png', 'text': 'Automobile'},
    {'image': 'assets/images/type/limosine.png', 'text': 'Limousine'},
    {'image': 'assets/images/type/limosine.png', 'text': 'Limousine'},

    // Add more items as needed
  ];
  final List<Map<String, dynamic>> carData = [
  {
    'name': 'Public Bus',
    'imageUrl': 'assets/images/cars/public.jpg',
    'rating': 4.7,
    'date': '2 July',
    'numberOfSeats': 60,
    'price': 2.0,
  },
  {
    'name': 'School Bus',
    'imageUrl': 'assets/images/cars/school.jpg',
    'rating': 4.9,
    'date': '15 August',
    'numberOfSeats': 40,
    'price': 5.0,
  },
  {
    'name': 'Mini Bus',
    'imageUrl': 'assets/images/cars/minibus.jpg',
    'rating': 4.8,
    'date': '20 July',
    'numberOfSeats': 12,
    'price': 8.0,
  },
  
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 0, 122, 255),
        unselectedItemColor: Color.fromARGB(255, 26, 25, 27),
        backgroundColor: Color.fromARGB(255, 235, 241, 245),
        currentIndex: 2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Recent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Emergency',
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            //header
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    // backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 26, 25, 27),
                        ),
                      ),
                      Text(
                        "maajid",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 26, 25, 27),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  DropdownButton(
                    hint: Row(
                      children: [
                        Icon(Icons.location_on),
                        Text("Location"),
                      ],
                    ),
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: ["bole", "22", "cmc"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
            ),
// Rent Car Anytime
            Flexible(
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: Column(children: [
                  Text(
                    "Rent a Car Anytime",
                    style: TextStyle(
                        color: Color.fromARGB(255, 26, 25, 27),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search any Car",
                          suffixIcon: Icon(Icons.filter_list),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          fillColor: Color.fromARGB(255, 235, 241, 245),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 10)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Types of Car",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () => {},
                          child: Text("View All"),
                        )
                      ],
                    ),
                  ),

                  Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 235, 241, 245),
                        borderRadius: BorderRadius.all(Radius.circular(23)),
                      ),
                      child: ListView.separated(
                        padding: EdgeInsets.all(20),
                        itemCount: iconTextPairs.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return IconWithText(
                            image: iconTextPairs[index]['image']!,
                            text: iconTextPairs[index]['text']!,
                          );
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 20),
                        physics: AlwaysScrollableScrollPhysics(),
                      )
                      // child: ListView(
                      //   padding: EdgeInsets.all(20),

                      //   scrollDirection: Axis.horizontal,
                      //   children: iconsWithText,
                      // ),
                      ),
                  SizedBox(height: 25),

                  //Top Rated Cars
                  Row(
                    children: [
                      Text(
                        "Top Rated Cars",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () => {},
                        child: Text("View All"),
                      )
                    ],
                  ),

                  Container(
                    height: 210,
                    decoration: const BoxDecoration(
                      // color: Color.fromARGB(255, 235, 241, 245),
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                    ),
                    child: ListView.separated(
                      padding: EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      itemCount: carData.length,
                      itemBuilder: (context, index) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(
        context,
        '/cardetail', 
      );
    },
    child: CarCard(name: carData[index]["name"]!,imageUrl: carData[index]["imageUrl"]!,rating:4.7,date: carData[index]["date"]!,numberOfSeats: carData[index]["numberOfSeats"]!,price: carData[index]["price"]!,),
  );
},
                      separatorBuilder: (context, index) => SizedBox(width: 10),
                    ),
                  ),

                  //Top Rated Cars
                  SizedBox(height: 15),
                  //most popular car

                  Row(
                    children: [
                      Text(
                        "Most Popular Cars",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () => {},
                        child: Text("View All"),
                      )
                    ],
                  ),

                  Column(
                    children: [

                      CarDetails(name:carData[2]["name"],imageUrl:carData[2]["imageUrl"],price:carData[2]["price"],rating:carData[2]["rating"],date:carData[2]["date"] ),
                      SizedBox(height: 10),
                      CarDetails(name:carData[1]["name"],imageUrl:carData[1]["imageUrl"],price:carData[1]["price"],rating:carData[1]["rating"],date:carData[1]["date"] ),
                      SizedBox(height: 10),
                      CarDetails(name:carData[0]["name"],imageUrl:carData[0]["imageUrl"],price:carData[0]["price"],rating:carData[0]["rating"],date:carData[0]["date"] ),
                      
                    ],
                  ),

                  //most popular car
                  //new
                ]),
              ),
            )
// Rent Car Anytime
          ],
        ),
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  IconWithText({super.key, required this.image, required this.text});

  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Image(
          height: 40,
          image: AssetImage(image),
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}

class CarCard extends StatefulWidget {
  final String imageUrl ;
  final String name ;
  final double rating;
  final String date;
  final int numberOfSeats;
  final double price;

  const CarCard({
    Key? key,
    required this.imageUrl,
    required this.name,
   required  this.rating,
    required this.date,
    required this.numberOfSeats,
    required this.price,
  }) : super(key: key);

  @override
  _CarCardState createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          // BoxShadow(
          //   color: Colors.grey.withOpacity(0.5),
          //   spreadRadius: 0.5,
          //   blurRadius: ,
          //   offset: Offset(0, 3),
          // ),
        ],
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    widget.imageUrl,
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
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
                        widget.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Text(
                        '5.0',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 4),
                  Text(
                    'Available from ${widget.date}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  // SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.car_rental),
                      Text(' ${widget.numberOfSeats} Seats',
                        
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.monetization_on,
                        size: 14,
                      ),
                      Text(
                        '\$${widget.price}/hour',
                        style: TextStyle(
                          fontSize: 14,
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
    );
  }
}





class CarDetails extends StatefulWidget {
  final String imageUrl ;
  final String name ;
  final double rating;
  final String date;
  final double price;

  const CarDetails({
    Key? key,
    required this.imageUrl,
    required this.name,
   required  this.rating,
    required this.date,
    required this.price,
  }) : super(key: key);
  @override
  _CarDetails createState() => _CarDetails();
}

class _CarDetails extends State<CarDetails> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    widget.imageUrl,
                    height: 170,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
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
                        widget.name,
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
                      Text('\$${widget.price}/hour',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                      
                    ],
                  ),
                  // SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                      ),
                      Text(
                        ' ${widget.rating}',
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
                  Row(
                    children: [
                      Text(
                        'Available from ${widget.date}',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      FilledButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 190, 192, 194)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10)),
                        ),
                        onPressed: () => {},
                        child: Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.black,
                          ),
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
    );
  }
}
