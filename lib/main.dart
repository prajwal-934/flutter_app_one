import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: "/login",
      routes: {"/login": (context) => LoginScreen()},
    );
  }
}
