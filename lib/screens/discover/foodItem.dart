import 'dart:convert';

class FoodItem {
  final String shopName;
  final String itemName;
  final double price;
  final int numberItemsRemaining;
  final double distance;
  final bool favourite;
  final String imageUrl;
  final String description;
  final int calories;
  final String allergens;
  final double shopPrice;

  FoodItem(
      this.shopName,
      this.itemName,
      this.price,
      this.numberItemsRemaining,
      this.distance,
      this.favourite,
      this.imageUrl,
      this.allergens,
      this.calories,
      this.description,
      this.shopPrice);

  // factory FoodItem.fromJson(Map<String, dynamic> json) {
  //   return new FoodItem(
  //     shopName: json['shopName'] as String,
  //     itemName: json['itemName'] as String,
  //     price: json['price'] as double,
  //     numberItemsRemaining: json['numberItemsRemaining'] as int,
  //     distance: json[''] as double
  //     favourite: json[''] as bool
  //     imageUrl: json[''] as String
  //     allergens: json[''] as String
  //     calories: json[''] as int
  //     description: json[''] as String
  //     shopPrice: json[''] as double
  //   );
  // }
}
