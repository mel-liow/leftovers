import 'package:leftovers_app/models/foodItem.dart';

class CatalogModel {
  final List<FoodItem> items = [
    FoodItem("Pret A Manger", "Falafel Wrap", 2.50, 3, 0.1, false, "pret_salad",
        "nuts", 340, "This is a falalfel wrap", 5.50, 1),
    FoodItem("Leon", "Falafel Wrap", 2.50, 3, 0.1, false, "pret_salad", "nuts",
        340, "This is a falalfel wrap", 5.50, 2),
    FoodItem("Pret A Manger", "Falafel Wrap", 2.50, 3, 0.1, false, "pret_salad",
        "nuts", 340, "This is a falalfel wrap", 5.50, 3),
    FoodItem("Leon", "Falafel Wrap", 2.50, 3, 0.1, false, "pret_salad", "nuts",
        340, "This is a falalfel wrap", 5.50, 4),
  ];

  FoodItem getById(int id) =>
      items.singleWhere((foodItem) => foodItem.id == id);

  // FoodItem reduceStock(int id) =>
}
