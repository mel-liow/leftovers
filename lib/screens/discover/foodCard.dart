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
      child: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: new EdgeInsets.all(0.0),
                      color: Theme.of(context).accentColor,
                      child: new ButtonBar(
                        alignment: MainAxisAlignment.start,
                        buttonPadding: EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 0),
                        children: <Widget>[
                          Text(
                            this.foodItem.shopName,
                            style: Theme.of(context).textTheme.headline3,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
