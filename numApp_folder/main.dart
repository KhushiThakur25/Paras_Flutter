import 'package:flutter/material.dart';
import 'package:numerology_app/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Numerology App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
