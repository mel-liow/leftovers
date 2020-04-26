import 'package:flutter/material.dart';
import 'package:leftovers_app/screens/discover/discoverCard.dart';
import 'package:leftovers_app/screens/discover/foodCard.dart';
import 'package:leftovers_app/models/catalogModel.dart';
import 'package:provider/provider.dart';
import 'package:leftovers_app/models/foodItem.dart';

class DiscoverWidget extends StatefulWidget {
  @override
  _DiscoverWidgetState createState() => new _DiscoverWidgetState();
}

class _DiscoverWidgetState extends State<DiscoverWidget> {
  FoodItem _foodItem;

  clearItem() {
    setState(() => _foodItem = null);
  }

  @override
  Widget build(BuildContext context) {
    var catalog = Provider.of<CatalogModel>(context);
    var items = catalog.items;

    return _foodItem != null
        ? FoodCardWidget(foodItem: _foodItem, onClose: clearItem)
        : ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: catalog.items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => setState(() => _foodItem = items[index]),
                child:
                    DiscoverCardWidget(foodItem: items[index], onLike: () {}),
              );
            },
          );
  }
}
