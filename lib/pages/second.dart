import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/model.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';


class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  @override
  void initState(){
    super.initState();
    loadData();
  }

  loadData() async {
    var catJson = await rootBundle.loadString("assets/files/cat.json");
    var decodedData = jsonDecode(catJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromJSON(item)).toList();
    setState(() {}); 
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.indigo),
          backgroundColor: Colors.white,
          title: Text(
            'Shophold',
            textScaleFactor: 1.6,
            style: TextStyle(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
            )
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,6,0),
              child: Icon(CupertinoIcons.cart),
            )
          ],
        ),
        drawer: MyDrawer(),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index){
            final item = CatalogModel.items[index];
            return Card(
              margin: EdgeInsets.fromLTRB(5,5,5,5),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              color: Colors.indigo[200],
              child: GridTile(
                header: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                  ),
                  child: Text(item.name, style: TextStyle(color: Colors.indigo[800]),textScaleFactor: 1.5,)
                ),
                child: Image.asset(item.imageurl),
                footer: Text("\$ ${item.price}", style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold),textScaleFactor: 1.5,),
              ),
            );
          },
        )
    );
  }
}