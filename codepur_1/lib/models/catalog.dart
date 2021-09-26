
class CatalogModel{

  static final items=[Item(
  id: 1,
  name: "Iphone Pro 11",
  desc:"Apple Iphone 11th generartion",
  price: 999,
  color: "#9E776F",
  image: "https://images-na.ssl-images-amazon.com/images/I/51I7B68Vd-L.__AC_SX300_SY300_QL70_FMwebp_.jpg",

)];

}



class Item{

  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}


