import 'package:flutter/material.dart';
import 'package:leftovers_app/themes/theme.dart';
import './foodItem.dart';

class FoodCardWidget extends StatelessWidget {
  final FoodItem foodItem;
  final Function addToOrder;

  FoodCardWidget({Key key, @required this.foodItem, this.addToOrder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodItem.itemName),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(foodItem.shopName),
      ),
    );
  }
}
