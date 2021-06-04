import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Login Page",
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.w800,
            ),
          )
        ),
      ),
      // child: Center(
      //   child: Text("Login Page")
      // ),
    );
  }
}