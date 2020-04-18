import 'package:leftovers_app/models/foodItem.dart';

class CatalogModel {
  final List<FoodItem> items = [
    FoodItem("Pret A Manger", "Tuna Salad", 4.50, 2, 0.3, false, "pret_salad",
        "nuts", 340, "This is a falalfel wrap", 5.50, 1),
    FoodItem("Leon", "Falafel Salad", 2.50, 3, 0.1, false, "falafel_salad",
        "nuts", 340, "This is a falalfel wrap", 5.50, 2),
    FoodItem("Costa", "Chocolate Brownie", 2.50, 3, 0.1, false, "costa_brownie",
        "nuts", 340, "This is a falalfel wrap", 5.50, 3),
    FoodItem("Subway", "Ham Sandwich", 2.50, 3, 0.1, false, "ham_sandwich",
        "nuts", 340, "This is a falalfel wrap", 5.50, 4),
    FoodItem("Nero", "Cheese Toastie", 2.50, 3, 0.1, false, "cheese_toastie",
        "nuts", 340, "This is a falalfel wrap", 5.50, 4),
  ];

  FoodItem getById(int id) =>
      items.singleWhere((foodItem) => foodItem.id == id);

  // FoodItem reduceStock(int id) =>
}
