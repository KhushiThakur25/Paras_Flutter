import 'package:flutter/material.dart';
import 'package:list_view/home_screen.dart';

void main(){
  runApp(Scrolling_Feature());
}

class Scrolling_Feature extends StatelessWidget {
  const Scrolling_Feature({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View",
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),    );
  }
}