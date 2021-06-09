import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/widgets/drawer.dart';


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black12,
          title: Text('Shophold'),
          centerTitle: true,
        ),
        drawer: MyDrawer(),
        // backgroundColor: Colors.black12,
        body: Center(
          child: Text(
            "Main Page.",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
    );
  }
}