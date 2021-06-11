class CatalogModel{
  static final items = [
    Item(
      id: 5001,
      name: "Pixel 5XL",
      price: 1299,
      desc: "8Gb / 128Gb",
      imageurl: "assets/images/pixel.png",
      color: "white",
    ),
    Item(
      id: 5002,
      name: "iPhone 12",
      price: 999,
      desc: "8Gb / 128Gb",
      imageurl: "assets/images/ip12.png",
      color: "white",
    ),
    Item(
      id: 5001,
      name: "MacBook pro",
      price: 2099,
      desc: "M1 chip 12Gb RAM",
      imageurl: "assets/images/mac.png",
      color: "white",
    ),
    Item(
      id: 5001,
      name: "AirPods pro",
      price: 600,
      desc: "Wireless headphones",
      imageurl: "assets/images/air.png",
      color: "white",
    ),
    Item(
      id: 5001,
      name: "Mi 11 pro",
      price: 800,
      desc: "6Gb / 64Gb",
      imageurl: "assets/images/mi11.png",
      color: "white",
    ),
    Item(
      id: 5001,
      name: "Samsung S21 Ultra",
      price: 600,
      desc: "8Gb / 512Gb",
      imageurl: "assets/images/sas21.png",
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