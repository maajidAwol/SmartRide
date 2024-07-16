import 'package:flutter/material.dart';
import 'package:smart_ride_app/Screens/Onboarding/Onboard1.dart';

import 'package:smart_ride_app/Screens/Onboarding/Onboard2.dart';
import 'package:smart_ride_app/Screens/account/signin.dart';
import 'package:smart_ride_app/Screens/account/signup.dart';
import 'package:smart_ride_app/Screens/home/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:smart_ride_app/Screens/home/cardetail.dart';



void  main()  async{
  WidgetsFlutterBinding.ensureInitialized(); // Ensure plugin services are initialized

await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCvunGllJ8kzq2qa5dLXwAHT_lcOYQikg0",
      appId: "1:1007659684194:android:e93dd6303eeadc95079c3b",
      messagingSenderId: "1007659684194",
      projectId: "smart-ride-5e9c6",
    ),
  );  
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
        '/cardetail': (context) => CarDetailScreen(),
      
      },
    );
  }
}
