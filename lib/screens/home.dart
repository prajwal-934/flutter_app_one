import 'package:flutter/material.dart';
import 'package:helloworld/widgets/catlog.dart';
import 'dart:ui';

import 'package:helloworld/widgets/drawer.dart';
import 'package:helloworld/widgets/showitems.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listdemo = List.generate(30, (index) => CatelogModel.products[0]);
    var days = "fifth";
    return Scaffold(
      appBar: AppBar(
        title: Text("App Heading"),
      ),
      body: Center(
        child: Container(
            child: ListView.builder(
          itemCount: listdemo.length,
          itemBuilder: (context, index) {
            return ShowItemStyle(
              item: listdemo[index],q
            );
          },
        )),
      ),
      drawer: MyDrawer(),
    );
  }
}
