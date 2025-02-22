import 'package:flutter/material.dart';

class CallingScreen extends StatefulWidget {
  late int itemCount;
  CallingScreen({super.key, required this.itemCount});

  @override
  State<CallingScreen> createState() => _CallingScreenState();
}

class _CallingScreenState extends State<CallingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This your calling screen."),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("This is your Page...")],
        ),
      ),
    );
  }
}
