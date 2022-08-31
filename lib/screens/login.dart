import 'package:flutter/material.dart';
import 'dart:ui';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset("assets/images/login.png"),
        const Text(
          "Welcome",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
              ),
        )
      ],
    ));
  }
}
s