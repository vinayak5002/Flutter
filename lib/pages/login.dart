import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static String name="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      darkTheme: ThemeData(brightness: Brightness.dark,fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/login_icon.png", height: 80, width: 80,),
                  Text(
                    "Welcome $name",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical :14.0, horizontal: 40),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter user name",
                        labelText: "User name"
                      ),
                      onChanged: (value){
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"
                      ),
                    ),
                    SizedBox(height:20),
                    
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.home);
                      print("clicked");
                    },
                    child: Text("Login",style: TextStyle(fontSize: 20),),
                    style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}