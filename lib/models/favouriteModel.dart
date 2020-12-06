import 'package:flutter/foundation.dart';
import 'package:leftovers_app/models/foodModel.dart';

class FavouriteModel extends ChangeNotifier {
  FoodCatalogue _foodCatalogue;

  final List<FoodItem> _items = [];

  FoodCatalogue get foodCatalogue => _foodCatalogue;

  set favouriteItems(FoodCatalogue newFoodCatalogue) {
    assert(newFoodCatalogue != null);
    _foodCatalogue = newFoodCatalogue;
    print('HERE');
    notifyListeners();
  }

  List<FoodItem> get items => _items;

  void add(FoodItem item) {
    item.favourite = true;
    _items.add(item);
    notifyListeners();
  }

  void remove(FoodItem item) {
    _items.removeWhere((faveItem) => faveItem.id == item.id);
    item.favourite = false;
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
