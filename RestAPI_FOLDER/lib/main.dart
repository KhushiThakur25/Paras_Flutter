import 'package:flutter/material.dart';
import 'package:rest_api/api_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final api = ApiService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("REST API Methods.")),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () => api.fetchWithHttp(),
                child: Text("GET with http"),
              ),
              ElevatedButton(
                onPressed: () => api.postWithHttp(),
                child: Text("POST with http"),
              ),
              ElevatedButton(
                onPressed: () => api.fetchWithDio(),
                child: Text("GET with Dio"),
              ),
              ElevatedButton(
                onPressed: () => api.postWithDio(),
                child: Text("POST with Dio"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
