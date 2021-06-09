import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/second.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static String name="";
  bool but = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      darkTheme: ThemeData(brightness: Brightness.dark,fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Text("Login Page"),
        //   centerTitle: true,
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
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

                    Material(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12),
                      child: InkWell(
                        onTap: () async {
                          setState(() { 
                          but = true;
                          });
                          await Future.delayed(Duration(seconds: 1));
                          await Navigator.pushNamed(context, MyRoutes.home);
                          setState(() {
                            but = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: 150,
                          height: 50,
                          child: but ? Icon(Icons.done, color: Colors.white,) : Text(
                            "Login",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          alignment: Alignment.center,
                        ),
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