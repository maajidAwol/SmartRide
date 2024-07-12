import 'package:flutter/material.dart';
import 'package:smart_ride_app/Screens/Onboarding/Onboard1.dart';
import 'package:smart_ride_app/Screens/Onboarding/Onboard2.dart';
void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Onboard1(),
    );
  }
}

