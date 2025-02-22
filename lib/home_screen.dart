import 'package:flutter/material.dart';
import 'package:list_view/calling_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Playlist"), centerTitle: true),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, itemCount) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                "${itemCount}",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue,
            ),
            title: Text(
              "This is title of ListView",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text("This is the subtitle for ListView"),
            onTap:
                () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CallingScreen(itemCount: itemCount),
                    ),
                  ),
                },
          );
        },
      ),
    );
  }
}
