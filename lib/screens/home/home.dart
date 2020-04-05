import 'package:flutter/material.dart';
import '../placeholder/placeholder.dart';
import '../discover/discover.dart';

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
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.white),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
