import 'package:flutter/material.dart';
import 'package:smart_ride_app/Screens/Onboarding/Onboard1.dart';

import 'package:smart_ride_app/Screens/Onboarding/Onboard2.dart';
import 'package:smart_ride_app/Screens/account/signin.dart';
import 'package:smart_ride_app/Screens/account/signup.dart';
import 'package:smart_ride_app/Screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      title: 'Smart Ride',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
  
      routes: {
        '/':(context) => Onboard1(),
        '/onboard2':(context) => Onboard2(),
        '/signin':(context) => SignIn(),
        '/signup':(context) => SignUp(),
        '/home':(context) => Home(),
      
      },
    );
  }
}
