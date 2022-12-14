import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:helloworld/utils/myroutes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _formkey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool isButtonclicked = false;

  moveToHomeScreen(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        isButtonclicked = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/login.png"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.purple),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: "Enter Username"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be blank";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be blank";
                          } else if (value.length < 6) {
                            return "Password must be greater than 6 letters";
                          }
                          return null;
                        },
                        decoration:
                            InputDecoration(labelText: "Enter Password"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () => moveToHomeScreen(context),
                        child: AnimatedContainer(
                          height: 50,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color:
                                isButtonclicked ? Colors.purple : Colors.green,
                          ),
                          duration: Duration(seconds: 1),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )

                      // ElevatedButton(
                      //     style: TextButton.styleFrom(
                      //         backgroundColor: Colors.purple),
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //     },
                      //     child: Text("Login"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
