import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<void> fetchWithHttp() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);
    print('HTTP Response: ${response.body}');
  }

  Future<void> postWithHttp() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    var response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'title': "Demo",
        'body': 'This is a dummy data',
        'User ID': 1,
      }),
    );
    print('Post Response: ${response.body}');
  }

  Future<void> fetchWithDio() async {
    var dio = Dio();
    var response = await dio.get("https://jsonplaceholder.typicode.com/posts");
    print('Dio Response: ${response.data}');
  }

  Future<void> postWithDio() async {
    var dio = Dio();
    var response = await dio.post(
      'https://jsonplaceholder.typicode.com/posts',
      data: {'title': "Demo", 'body': 'This is a dummy data', 'User ID': 1},
    );
    print('Dio POst Response: ${response.data}');
  }
}
