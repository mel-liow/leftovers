import 'package:flutter/material.dart';
import 'package:leftovers_app/models/favouriteModel.dart';
import 'package:provider/provider.dart';
import 'package:leftovers_app/models/cartModel.dart';
import 'package:leftovers_app/screens/home/home.dart';
import 'package:leftovers_app/themes/theme.dart' as Theme;
import 'package:leftovers_app/models/foodModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider(create: (context) => FoodCatalogue()),
          ChangeNotifierProxyProvider<FoodCatalogue, CartModel>(
            create: (context) => CartModel(),
            update: (context, items, cart) {
              cart.cartItems = items;
              return cart;
            },
          ),
          ChangeNotifierProxyProvider<FoodCatalogue, FavouriteModel>(
            create: (context) => FavouriteModel(),
            update: (context, items, favourite) {
              favourite.favouriteItems = items;
              return favourite;
            },
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: Theme.appThemeData,
          home: Scaffold(body: Center(child: Home())),
        ));
  }
}
