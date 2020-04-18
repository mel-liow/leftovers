import 'package:flutter/material.dart';
import 'package:leftovers_app/screens/discover/discoverCard.dart';
import 'package:leftovers_app/screens/discover/foodCard.dart';
import 'package:leftovers_app/models/catalogModel.dart';
import 'package:provider/provider.dart';

class DiscoverWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var catalog = Provider.of<CatalogModel>(context);
    var items = catalog.items;

    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: catalog.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodCardWidget(
                  foodItem: items[index],
                ),
                settings: RouteSettings(
                  arguments: items[index],
                ),
              ),
            );
          },
          child: DiscoverCardWidget(foodItem: items[index], onLike: () {}),
        );
      },
    );
  }
}
