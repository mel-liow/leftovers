import 'package:flutter/material.dart';
import 'package:leftovers_app/screens/discover/discover.dart';
import 'package:leftovers_app/themes/theme.dart';
import 'package:leftovers_app/screens/shoppingCart/shoppingCart.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    DiscoverWidget(),
    ShoppingCartWidget(),
    ShoppingCartWidget()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CompanyColors.beige[50],
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(
              'Leftovers',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.left,
            ),
          ),
          body: _children[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            items: [
              new BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('discover'),
              ),
              new BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('favourites'),
              ),
              new BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket), title: Text('orders'))
            ],
          ),
        ));
  }
}
