import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme() {
    return ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 18)));
  }

  static ThemeData darkTheme() {
    return ThemeData(
        brightness: Brightness.dark, appBarTheme: AppBarTheme(elevation: 0.0));
  }
}
