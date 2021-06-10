class CatalogModel{
  static final items = [
    Item(
      id: 5001,
      name: "Pixel 5XL",
      price: 1000,
      desc: "8Gb / 128Gb",
      imageurl: "assets/images/pixel.png",
      color: "white",
    ),
    Item(
      id: 5002,
      name: "iPhone 12",
      price: 1000,
      desc: "8Gb / 128Gb",
      imageurl: "assets/images/ip12.png",
      color: "white",
    ),
    Item(
      id: 5001,
      name: "MacBook pro",
      price: 2000,
      desc: "M1 chip 12Gb RAM",
      imageurl: "assets/images/mac.png",
      color: "white",
    ),
  ];
}


class Item {
  final String name;
  final num id;
  final String desc;
  final num price;
  final String imageurl;
  final String color;

  Item({required this.name, required this.id, required this.desc, required this.price, required this.imageurl, required this.color});
   
}

final products = [
  Item(
    id: 5001,
    name: "Pixel 5XL",
    price: 1000,
    desc: "cool phone",
    imageurl: "assets/images/mac.png",
    color: "white",
  ),
  Item(
    id: 5002,
    name: "iPhone 12",
    price: 1000,
    desc: "cool phone",
    imageurl: "assets/images/ip12.png",
    color: "white",
  ),
  Item(
    id: 5001,
    name: "MacBook pro",
    price: 2000,
    desc: "cool laptop",
    imageurl: "assets/images/mac.png",
    color: "white",
  ),
];