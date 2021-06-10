import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model.dart';


class ItemWidget extends StatelessWidget {

  final Item item;

  // ignore: unnecessary_null_comparison
  const ItemWidget({ Key? key, required this.item }) : assert(item!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(item.imageurl),
    );
  }
}