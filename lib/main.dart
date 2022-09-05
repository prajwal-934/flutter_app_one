import 'package:flutter/material.dart';
import 'package:helloworld/utils/myroutes.dart';
import 'package:helloworld/widgets/themes.dart';
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
      theme: MyTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.homeRoute: (context) => HomePage()
      },
    );
  }
}
