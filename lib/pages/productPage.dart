import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final name;
  final image;
  final desc;
  const ProductPage({ Key? key, this.name, this.image, this.desc }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.indigo[200],
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(CupertinoIcons.back, color: Colors.indigo[900],),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
                ),
                color: Colors.indigo[200],
              )
            ),

            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
              )
            )
          ],
        ),
      ),
    );
  }
}