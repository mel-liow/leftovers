import 'package:flutter/material.dart';
import 'package:leftovers_app/models/favouriteModel.dart';
import 'package:provider/provider.dart';
import 'package:leftovers_app/screens/discover/discoverCard.dart';

class FavouritesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _FavouritesList(),
        ),
      ],
    );
  }
}

class _FavouritesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var favourites = Provider.of<FavouriteModel>(context);
    return ListView.builder(
      // scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(20),
      itemBuilder: (context, index) {
        return DiscoverCardWidget(
          foodItem: favourites.items[index],
        );
      },
    );
  }
}
