import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:leftovers_app/models/cartModel.dart';
import 'package:leftovers_app/screens/discover/discoverCard.dart';

class ShoppingCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: _CartList(),
          ),
        ),
        Divider(height: 4, color: Colors.black),
        // _CartTotal()
      ],
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);

    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: cart.items.length,
      itemBuilder: (context, index) {
        return DiscoverCardWidget(
          foodItem: cart.items[index],
        );
      },
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {}
}
