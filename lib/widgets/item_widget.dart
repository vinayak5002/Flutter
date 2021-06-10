import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model.dart';


class ItemWidget extends StatelessWidget {

  final Item item;

  // ignore: unnecessary_null_comparison
  const ItemWidget({ Key? key, required this.item }) : assert(item!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        child: ListTile(
        leading: Image.asset(item.imageurl, width: 80,),
        title: Text(item.name, textScaleFactor: 1.3,),
        subtitle: Text(item.desc),
        trailing: Text("\$ ${item.price}", textScaleFactor: 1.3,style:TextStyle(fontWeight: FontWeight.bold,color:Colors.blue),),
        ),
      ),
    );
  }
}