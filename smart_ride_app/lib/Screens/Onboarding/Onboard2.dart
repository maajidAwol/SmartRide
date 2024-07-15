import 'package:flutter/material.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 247, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
            ),
            Image(
              height: 200,
              image: AssetImage("assets/images/logo.png"),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Smart Ride",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins',
                color: Color.fromARGB(255, 255, 165, 0),
              ),
            ),
            Text("Find and rent your next  vehicle")
            ,
            SizedBox(
              height: 160,
            ),
            FilledButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 0, 122, 255),
                ),
                minimumSize: MaterialStateProperty.all(Size(350, 50)),
              ),
              onPressed: () => {
                Navigator.pushNamed(
                  context,
                  '/signup',
                )
              },
              child: Text(
                "Get Started !",
                style: TextStyle(color: Colors.white, 
                fontSize: 20),
              ),
            ),
            SizedBox(height: 60),
        ],
        ),
      ),
    );
  }
}
