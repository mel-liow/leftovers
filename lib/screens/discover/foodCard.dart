import 'package:flutter/material.dart';
import 'package:leftovers_app/models/foodItem.dart';
import 'package:leftovers_app/widgets/buttonCounter/buttonCounter.dart';
import 'package:leftovers_app/models/cartModel.dart';
import 'package:provider/provider.dart';

class FoodCardWidget extends StatelessWidget {
  final FoodItem foodItem;

  FoodCardWidget({Key key, @required this.foodItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('foodItem');
    print(foodItem);
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
                    _FoodImage(foodItem: foodItem),
                    _ShopDetail(foodItem: foodItem),
                    _Description(foodItem: foodItem),
                    _Allergens(foodItem: foodItem),
                    _AddToCart(foodItem: foodItem)
                  ]),
                ),
              ),
            )));
  }
}

class _FoodImage extends StatelessWidget {
  final FoodItem foodItem;

  _FoodImage({Key key, @required this.foodItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset('assets/images/${foodItem.imageUrl}.jpg',
                width: 300, fit: BoxFit.fill)),
      ],
    );
  }
}

class _ShopDetail extends StatelessWidget {
  final FoodItem foodItem;

  _ShopDetail({Key key, @required this.foodItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        '${foodItem.itemName}',
                        style: Theme.of(context).textTheme.headline2,
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
                    '${foodItem.shopName}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    '${foodItem.distance} miles away',
                    style: Theme.of(context).textTheme.bodyText2,
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
                          '£${foodItem.shopPrice}',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(
                          '£${foodItem.price}',
                          style: Theme.of(context).textTheme.bodyText1,
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
    );
  }
}

class _Description extends StatelessWidget {
  final FoodItem foodItem;

  _Description({Key key, @required this.foodItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    '${foodItem.calories} kcal',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    '${foodItem.description}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class _Allergens extends StatelessWidget {
  final FoodItem foodItem;

  _Allergens({Key key, @required this.foodItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    '${foodItem.allergens}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class _AddToCart extends StatefulWidget {
  final FoodItem foodItem;
  // final int count;
  _AddToCart({Key key, @required this.foodItem});

  @override
  _AddToCartState createState() => new _AddToCartState(foodItem: foodItem);
}

class _AddToCartState extends State<_AddToCart> {
  final FoodItem foodItem;

  _AddToCartState({Key key, @required this.foodItem});
  int _count;

  @override
  initState() {
    super.initState();
    _count = 0;
  }

  countIncrementer() {
    _count++;
    setState(() => _count);
  }

  countDecrementer() {
    if (_count != 0) _count--;
    setState(() => _count);
  }

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);
    return Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonCounter(
                  countIncrementer: countIncrementer,
                  countDecrementer: countDecrementer,
                  count: _count),
              RaisedButton(
                  onPressed: cart.items.contains(foodItem)
                      ? null
                      : () => cart.add(foodItem, _count),
                  child: Text('ADD'))
              // cart.items.firstWhere((item) => item.id == foodItem.id) ==
              //         null
              //     ? Text('ADD')
              //     : Icon(Icons.check, semanticLabel: 'ADDED'))
            ],
          ))
        ]));
  }
}
