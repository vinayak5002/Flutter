import 'package:flutter/material.dart';
import 'pages/second.dart';
import 'package:flutter_application_1/pages/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: FirstPage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/" : (context) => LoginPage(),
        "/Login" : (context) => LoginPage()
      },
    );
  }
}


//Can you see me???