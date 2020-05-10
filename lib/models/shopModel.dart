class Shop {
  final int id;
  final String name;
  final double distance; //to change to coordinates location

  Shop(this.id, this.name, this.distance);

  static Shop getById(int id) => shops.singleWhere((shop) => shop.id == id);

  static String getShopName(int id) => Shop.getById(id).name;

  static List<Shop> getShops() => shops;

  static List<Shop> shops = [
    Shop(1, "Pret A Manger", 0.9),
    Shop(2, "Leon", 0.8),
    Shop(3, "Costa", 1.1),
    Shop(4, "Subway", 0.2),
    Shop(5, "Nero", 0.5)
  ];

  //Will eventually include methods that can map locations

}
