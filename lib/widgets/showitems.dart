import 'package:flutter/material.dart';
import 'package:helloworld/widgets/catlog.dart';

import '../utils/myroutes.dart';

class ShowItemStyle extends StatelessWidget {
  final Item item;
  const ShowItemStyle({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, MyRoutes.loginRoute);
            print("buttontapped");
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price.toString()}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
