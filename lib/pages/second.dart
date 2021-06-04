import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class FirstPage extends StatelessWidget {
  @override
  void fuc(){

  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            Text('I am in the center'),
            ElevatedButton(onPressed: fuc, child: Text('click'))
          ],),
        ),
    );
  }
}