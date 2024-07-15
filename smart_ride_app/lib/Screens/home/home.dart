import 'package:flutter/material.dart';

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
            icon: Icon(
              Icons.notifications),
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
                    backgroundImage: AssetImage('assets/images/avatar.png'),
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
                        "Abd",
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
Flexible(child:
            SingleChildScrollView(
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
                      separatorBuilder: (context,index) => SizedBox(width: 20),
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
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 235, 241, 245),
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                  ),
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Card(
                      shadowColor: Colors.black,
                      child: Container(
                        child: Image(
                          height: 50,
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                  ]),
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
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 235, 241, 245),
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                  ),
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Card(
                      shadowColor: Colors.black,
                      child: Container(
                        child: Image(
                          height: 50,
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                    ),
                  ]),
                ),

                //most popular car
                //new
              ]),
              
            ),)
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
