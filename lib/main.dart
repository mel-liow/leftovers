import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:leftovers_app/models/cartModel.dart';
import 'package:leftovers_app/screens/home/home.dart';
import 'package:leftovers_app/themes/theme.dart' as Theme;
import 'package:leftovers_app/models/catalogModel.dart';

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
          Provider(create: (context) => CatalogModel()),
          ChangeNotifierProxyProvider<CatalogModel, CartModel>(
            create: (context) => CartModel(),
            update: (context, catalog, cart) {
              cart.catalog = catalog;
              return cart;
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
