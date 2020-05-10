import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:leftovers_app/screens/discover/discoverCard.dart';

class FavouritesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            // child: _ShopFavouritesList(),
            ),
      ],
    );
  }
}

// class _ShopFavouritesList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var cart = Provider.of<CartModel>(context);

//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       padding: EdgeInsets.all(20),
//       itemBuilder: (context, index) {
//         return DiscoverCardWidget(
//           foodItem: cart.items[index],
//         );
//       },
//     );
//   }
// }
