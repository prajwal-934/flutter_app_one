import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var days = "fifth";
    return Scaffold(
      appBar: AppBar(
        title: Text("App Heading"),
      ),
      body: Center(
        child: Container(
          child: Text("This is my $days App With using import"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
