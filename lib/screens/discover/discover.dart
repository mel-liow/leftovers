import 'package:flutter/material.dart';
import './discoverCard.dart';
import './foodCard.dart';
import 'package:leftovers_app/models/catalogModel.dart';
import 'package:provider/provider.dart';

class DiscoverWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var catalog = Provider.of<CatalogModel>(context);
    var items = CatalogModel.items;

    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: catalog.getNumberFoodItems(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodCardWidget(
                  foodItem: items[index],
                  addToOrder: () {},
                ),
                settings: RouteSettings(
                  arguments: items[index],
                ),
              ),
            );
          },
          child: DiscoverCardWidget(
              foodItem: CatalogModel.items[index], onLike: () {}),
        );
      },
    );
  }
}
