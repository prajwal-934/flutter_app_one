import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  String imageUrl = "https://data.whicdn.com/images/197666763/original.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        backgroundColor: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountName: Text("Prajwal Patil",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  accountEmail: Text("patilprajwal982@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_box_outlined, color: Colors.white),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(Icons.mail, color: Colors.white),
              title: Text(
                "Submit Feedback",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
