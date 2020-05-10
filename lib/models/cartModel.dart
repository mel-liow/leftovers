import 'package:flutter/foundation.dart';
import 'package:leftovers_app/models/foodModel.dart';

class CartModel extends ChangeNotifier {
  FoodCatalogue _foodCatalogue;

  final List<FoodItem> _items = [];

  FoodCatalogue get foodCatalogue => _foodCatalogue;

  set catalog(FoodCatalogue newFoodCatalogue) {
    assert(newFoodCatalogue != null);
    _foodCatalogue = newFoodCatalogue;
    notifyListeners();
  }
  // List <int> get itemIds =>_itemIds.map((id) => _catalog.getById(id)).id);

  List<FoodItem> get items => _items;

  double get totalPrice =>
      _items.fold(0, (total, current) => total + current.price);

  int get totalItems =>
      _items.fold(0, (total, current) => total + current.numberSelected);

  void add(FoodItem item, int count) {
    item.numberSelected = count;
    _items.add(item);
    //decrement count of item in catalogue
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
