import 'package:flutter/material.dart';
import 'package:leftovers_app/models/foodItem.dart';

class DiscoverCardWidget extends StatelessWidget {
  final FoodItem foodItem;
  final Function() onLike;

  DiscoverCardWidget({Key key, @required this.foodItem, this.onLike})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: new EdgeInsets.all(0.0),
                    color: Theme.of(context).accentColor,
                    child: new ButtonBar(
                      alignment: MainAxisAlignment.start,
                      buttonPadding:
                          EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
                      children: <Widget>[
                        new IconButton(icon: Icon(Icons.favorite)),
                        Text(
                          foodItem.shopName,
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '${foodItem.distance} miles away',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '${foodItem.itemName}',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                          child: Text(
                            '£${foodItem.price}',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                                // 'assets/images/${foodItem.imageUrl}jpg',
                                'assets/images/pret_salad.jpg',
                                height: 100,
                                width: 150,
                                fit: BoxFit.fitWidth)),
                      ],
                    )
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
