import 'package:flutter/foundation.dart';
import 'package:leftovers_app/models/foodModel.dart';

class CartModel extends ChangeNotifier {
  FoodCatalogue _foodCatalogue;

  final List<FoodItem> _items = [];

  FoodCatalogue get foodCatalogue => _foodCatalogue;

  set cartItems(FoodCatalogue newFoodCatalogue) {
    assert(newFoodCatalogue != null);
    _foodCatalogue = newFoodCatalogue;
    notifyListeners();
  }

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

  void remove(FoodItem item) {
    _items.removeWhere((cartItem) => cartItem.id == item.id);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
