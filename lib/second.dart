import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  void fuc(){

  }
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
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
      ),
    );
  }
}