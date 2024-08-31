import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mongo_lab1/varibles.dart';
import 'package:flutter_mongo_lab1/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthController {
  Future<void> login(
      BuildContext context, String username, String password) async {
    print(apiURL);

    final response = await http.post(Uri.parse("$apiURL/api/auth/login"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          {
            "username": username,
            "password": password,
          },
        ));
    print(response.statusCode);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      print(data['user']['role']);
      String role = data['user']['role'];

      if (role == 'admin') {
        Navigator.pushReplacementNamed(context, '/admin');
      } else {
        Navigator.pushReplacementNamed(context, '/home');
      }
    } else {
      print('Login failed');
    }
  }

  Future<void> register(BuildContext context, String username, String password,
      String name, String role, String email) async {
    final Map<String, dynamic> registerData = {
      "username": username,
      "password": password,
      "name": name,
      "role": role,
      "email": email,
    };

    final response = await http.post(
      Uri.parse("$apiURL/api/auth/register"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(registerData),
    );
    print(response.statusCode);

    if (response.statusCode == 201) {
      Navigator.pushReplacementNamed(context, '/login');
    } else {
      print('Registration failed');
    }
  }
}
