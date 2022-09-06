// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/widgets/catlog.dart';
import '../widgets/catlog.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
    this.catelog,
  }) : super(key: key);

  final Item? catelog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text("\$${catelog!.price.toString()}"),
          ElevatedButton(onPressed: () {}, child: Text("Buy Now"))
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              child: Image.network(catelog!.image),
              height: 250,
              width: 300,
            ),
          ),
          Text(
            catelog!.name,
            style: const TextStyle(fontSize: 25),
          ),
          Text(
            catelog!.desc,
            style: const TextStyle(fontSize: 18),
          ),
        ]),
      ),
    );
  }
}
