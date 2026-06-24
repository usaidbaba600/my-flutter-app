import 'package:flutter/material.dart';
import 'package:new_folder/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// I am Raheel
  // I am Usaid
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dag\$Drop",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}