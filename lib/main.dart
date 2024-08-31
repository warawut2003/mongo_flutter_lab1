import 'package:flutter/material.dart';
import 'package:flutter_mongo_lab1/Page/Admin.dart';

import 'package:flutter_mongo_lab1/Page/home_screen.dart';
import 'package:flutter_mongo_lab1/Page/login_screen.dart';
import 'package:flutter_mongo_lab1/Page/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/home': (context) => HomeScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterPage(),
          '/admin': (context) => AdminSrceen(),
        });
  }
}
