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
    return Column(
      children: [
        Scaffold(
          body: Text(catelog!.desc),
        ),
        Text(catelog!.name)
      ],
    );
  }
}
