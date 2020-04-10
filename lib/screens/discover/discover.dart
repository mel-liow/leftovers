import 'package:flutter/material.dart';
import './discoverCard.dart';
import './foodCard.dart';
import './foodItem.dart';

class DiscoverWidget extends StatelessWidget {
  final foodCards = List<FoodItem>.generate(
    20,
    (i) => FoodItem("Pret A Manger", "Falafel Wrap", 2.50, 3, 0.1, false),
  );

  //Fetch from database
  // final List<DiscoverCardWidget> discoverCards;
  // DiscoverWidget({Key key, @required this.discoverCards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: foodCards.length,
      itemBuilder: (context, index) {
        return DiscoverCardWidget(
          foodItem: foodCards[index],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodCardWidget(
                  foodItem: foodCards[index],
                  addToOrder: () {},
                ),
              ),
            );
          },
          onLike: () {},
        );
      },
    );
  }
}
