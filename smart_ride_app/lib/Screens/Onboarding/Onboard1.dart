import 'package:flutter/material.dart';
import 'package:smart_ride_app/Screens/Onboarding/Onboard2.dart';
class Onboard1 extends StatelessWidget {
  const Onboard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 247, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
            ),
            Image(
              height: 200,
              image: AssetImage("assets/images/logo.png"),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "For Smarts",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins',
                color: Color.fromARGB(255, 65, 65, 65),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            FilledButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 0, 122, 255),
                ),
                minimumSize: MaterialStateProperty.all(Size(350, 50)),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => const Onboard2(),)
                )
              },
              child: Text(
                "Let's Go!",
                style: TextStyle(color: Colors.white, 
                fontSize: 20),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), 
                        fontSize: 15,
                        fontWeight: FontWeight.bold)
                ),
                TextButton(
                  onPressed: () => {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 122, 255), fontSize: 15),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
