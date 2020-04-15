import 'package:flutter/material.dart';
import './discoverCard.dart';
import './foodCard.dart';
import './foodItem.dart';
// import 'package:flutter_load_local_json/foodItem.dart';

class DiscoverWidget extends StatelessWidget {
  final foodCards = [
    FoodItem("Pret A Manger", "Falafel Wrap", 2.50, 3, 0.1, false, "pret_salad",
        "nuts", 340, "This is a falalfel wrap", 5.50),
    FoodItem("Leon", "Falafel Wrap", 2.50, 3, 0.1, false, "pret_salad", "nuts",
        340, "This is a falalfel wrap", 5.50),
    FoodItem("Pret A Manger", "Falafel Wrap", 2.50, 3, 0.1, false, "pret_salad",
        "nuts", 340, "This is a falalfel wrap", 5.50),
    FoodItem("Leon", "Falafel Wrap", 2.50, 3, 0.1, false, "pret_salad", "nuts",
        340, "This is a falalfel wrap", 5.50),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: foodCards.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodCardWidget(
                  foodItem: foodCards[index],
                  addToOrder: () {},
                ),
                settings: RouteSettings(
                  arguments: foodCards[index],
                ),
              ),
            );
          },
          child: DiscoverCardWidget(foodItem: foodCards[index], onLike: () {}),
        );
      },
    );
  }
}
