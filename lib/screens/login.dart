import 'package:flutter/material.dart';
import 'dart:ui';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text(
            "Login Page",
            style: TextStyle(
              fontSize: 30,
              color: Colors.green.shade800,
            ),
          ),
        ),
      ),
    );
  }
}
