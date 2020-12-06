import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:leftovers_app/models/cartModel.dart';
import 'package:leftovers_app/screens/discover/discoverCard.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ShoppingCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _CartList(),
        ),
        Divider(height: 4, color: Colors.black),
        // _CartTotal()
      ],
    );
  }
}

class _CartList extends StatelessWidget {
  void _showSnackBar(BuildContext context, String text) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);

    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: cart.items.length,
      itemBuilder: (context, index) {
        final item = cart.items[index];
        return Slidable(
          key: ValueKey(item.id),
          child: DiscoverCardWidget(foodItem: item),
          dismissal: SlidableDismissal(
            child: SlidableDrawerDismissal(),
          ),
          actionPane: SlidableDrawerActionPane(),
          actionExtentRatio: 0.20,
          actions: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: IconSlideAction(
                    color: Colors.grey[400],
                    icon: Icons.delete,
                    onTap: () {
                      _showSnackBar(context, 'Deleted');
                      cart.remove(item);
                    }))
          ],
        );
      },
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {}
}
