import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloworld/screens/Products.dart';
import 'package:helloworld/widgets/catlog.dart';
import 'package:helloworld/widgets/catlog.dart';
import 'dart:ui';

import 'package:helloworld/widgets/drawer.dart';
import 'package:helloworld/widgets/showitems.dart';

import '../widgets/catlog.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadDate();
  }

  loadDate() async {
    var jsondata = await rootBundle.loadString("assets/files/catelog.json");
    var decodejsondata = jsonDecode(jsondata);
    var productsList = decodejsondata["products"];
    CatelogModel.products =
        List.from(productsList).map((value) => Item.fromMap(value)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text("App Heading"),
      ),
      body: Center(
        child: Container(
            child: (CatelogModel.products == null &&
                    CatelogModel.products!.isEmpty)
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: CatelogModel.products?.length,
                    itemBuilder: (context, index) {
                      final Item selectedItems = CatelogModel.products![index];
                      return InkWell(
                        onTap: () {
                          print(selectedItems.name);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      Products(catelog: selectedItems))));
                        },
                        child: ShowItemStyle(
                          item: selectedItems,
                        ),
                      );
                    },
                  )),
      ),
      drawer: MyDrawer(),
    );
  }
}
