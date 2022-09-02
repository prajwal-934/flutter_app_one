import 'package:flutter/material.dart';
import 'package:helloworld/widgets/catlog.dart';
import 'dart:ui';

import 'package:helloworld/widgets/drawer.dart';
import 'package:helloworld/widgets/showitems.dart';

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
            child: ListView.builder(
          itemCount: CatelogModel.products.length,
          itemBuilder: (context, index) {
            return ShowItemStyle(
              item: CatelogModel.products[index],
            );
          },
        )),
      ),
      drawer: MyDrawer(),
    );
  }
}
