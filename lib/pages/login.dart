import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      darkTheme: ThemeData(brightness: Brightness.dark,fontFamily: GoogleFonts.lato().fontFamily),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/login_icon.png", height: 80, width: 80,),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical :12.0, horizontal: 40),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter user name",
                      labelText: "User name"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                    ),
                  ),
                  SizedBox(height:20),
                  ElevatedButton(onPressed: () {}, child: Text("Login")),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}