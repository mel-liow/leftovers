import 'package:flutter/material.dart';
import './foodItem.dart';

class FoodCardWidget extends StatelessWidget {
  final FoodItem foodItem;
  final Function addToOrder;

  FoodCardWidget({Key key, @required this.foodItem, this.addToOrder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            // title: Text(foodItem.itemName),
            title: Text('Pret'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
        ],
      ),
    );
  }
}
