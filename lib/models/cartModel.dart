import 'package:flutter/foundation.dart';
import 'package:leftovers_app/models/foodItem.dart';
import 'package:leftovers_app/models/catalogModel.dart';

class CartModel extends ChangeNotifier {
  CatalogModel _catalog;

  final List<FoodItem> _items = [];
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    // assert(_itemIds.every((id) => newCatalog.getById(id) != null),
    //     'The catalog $newCatalog does not have one of $_itemIds in it.');

    _catalog = newCatalog;
    notifyListeners();
  }

  List<FoodItem> get items =>
      _itemIds.map((id) => _catalog.getById(id)).toList();

  double get totalPrice =>
      _items.fold(0, (total, current) => total + current.price);

  void add(FoodItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
