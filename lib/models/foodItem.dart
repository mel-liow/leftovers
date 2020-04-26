import 'package:flutter/material.dart';

@immutable
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
  final int id;

  int numberSelected;

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
      this.shopPrice,
      this.id);
}
