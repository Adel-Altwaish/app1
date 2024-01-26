// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:app1/pages/home_page.dart';
import 'package:app1/pages/login_page.dart';
import 'package:app1/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String initialRoute = 'login';
  static const String loginRoute = 'login';
  static const String registerRoute = 'register';
  static const String homeRoute = 'home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initialRoute,
      routes: {
        loginRoute: (context) => LoginPage(),
        registerRoute: (context) => RegisterPage(),
        homeRoute: (context) => HomePage(),
      },
      home: LoginPage(), // Set a default home route
    );
  }
}
