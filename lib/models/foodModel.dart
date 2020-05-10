class FoodItem {
  final int id;
  final String itemName;
  final int shopId;
  final double price;
  final int stock;
  final double distance;
  final bool favourite;
  final String imageUrl;
  final String description;
  final int calories;
  final String allergens;
  final double shopPrice;

  int numberSelected;
  String shopName;

  FoodItem(
      this.id,
      this.itemName,
      this.shopId,
      this.price,
      this.stock,
      this.distance,
      this.favourite,
      this.imageUrl,
      this.allergens,
      this.calories,
      this.description,
      this.shopPrice);

  static FoodItem getById(int id) =>
      foodItems.singleWhere((foodItem) => foodItem.id == id);

  static List<FoodItem> getFoodCatalogue() => foodItems;

  static List<FoodItem> foodItems = [
    FoodItem(1, "Tuna Salad", 1, 4.50, 2, 0.3, false, "pret_salad", "nuts", 340,
        "This is a falalfel wrap", 5.50),
    FoodItem(2, "Falafel Salad", 2, 2.50, 3, 0.1, false, "falafel_salad",
        "nuts", 340, "This is a falalfel wrap", 5.50),
    FoodItem(3, "Chocolate Brownie", 3, 2.50, 3, 0.1, false, "costa_brownie",
        "nuts", 340, "This is a falalfel wrap", 5.50),
    FoodItem(4, "Ham Sandwich", 4, 2.50, 3, 0.1, false, "ham_sandwich", "nuts",
        340, "This is a falalfel wrap", 5.50),
    FoodItem(5, "Cheese Toastie", 5, 2.50, 3, 0.1, false, "cheese_toastie",
        "nuts", 340, "This is a falalfel wrap", 5.50),
  ];
}

class FoodCatalogue {
  final List<FoodItem> foodCatalogue = FoodItem.getFoodCatalogue();
}
