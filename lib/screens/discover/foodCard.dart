import 'package:flutter/material.dart';
import 'package:leftovers_app/themes/theme.dart';
import './foodItem.dart';

class FoodCardWidget extends StatelessWidget {
  final FoodItem foodItem;
  final Function addToOrder;

  FoodCardWidget({Key key, @required this.foodItem, this.addToOrder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(foodItem.itemName),
        ),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                                // 'assets/images/${this.foodItem.imageUrl}jpg',                       'assets/images/${this.foodItem.imageUrl}jpg',
                                'assets/images/pret_salad.jpg',
                                width: 300,
                                fit: BoxFit.scaleDown)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.0, bottom: 8.0),
                                      child: Text(
                                        '${this.foodItem.itemName}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    '${this.foodItem.shopName}',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Text(
                                    '${this.foodItem.distance} miles away',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 16.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          '£${this.foodItem.shopPrice}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        Text(
                                          '£${this.foodItem.price}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    '${this.foodItem.calories} kcal',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    '${this.foodItem.description}',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    'Allergens',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    '${this.foodItem.allergens}',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ]),
                ),
              ),
            )));
  }
}
