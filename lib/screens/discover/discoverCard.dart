import 'package:flutter/material.dart';
import './foodItem.dart';

class DiscoverCardWidget extends StatelessWidget {
  final FoodItem foodItem;
  final Function() onTap;
  final Function() onLike;

  DiscoverCardWidget(
      {Key key, @required this.foodItem, this.onTap, this.onLike})
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
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {
                  onLike();
                },
              ),
              FlatButton(
                child: const Text('LISTEN'),
                onPressed: () {
                  onTap();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
