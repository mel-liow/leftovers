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
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                new ButtonBar(
                  children: <Widget>[
                    new IconButton(icon: Icon(Icons.favorite)),
                    Text(
                      'Pret A Manger',
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '0.1 miles away',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Tuna Salad',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '£3',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset('assets/images/pret_salad.jpg',
                            height: 100, width: 150, fit: BoxFit.fitWidth)),
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
