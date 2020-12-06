class FoodItem {
  final int id;
  final String itemName;
  final int shopId;
  final double price;
  final int stock;
  final double distance;
  // final bool favourite;
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
      this.imageUrl,
      this.allergens,
      this.calories,
      this.description,
      this.shopPrice);

  static FoodItem getById(int id) =>
      foodItems.singleWhere((foodItem) => foodItem.id == id);

  //getters and setters
  bool _favourite = false;
  get favourite => _favourite;
  set favourite(bool setBool) {
    _favourite = setBool;
  }

  static List<FoodItem> getFoodCatalogue() => foodItems;

  static List<FoodItem> foodItems = [
    FoodItem(1, "Tuna Salad", 1, 4.50, 2, 0.3, "pret_salad", "nuts", 340,
        "This is a falalfel wrap", 5.50),
    FoodItem(2, "Falafel Salad", 2, 2.50, 3, 0.1, "falafel_salad", "nuts", 340,
        "This is a falalfel wrap", 5.50),
    FoodItem(3, "Chocolate Brownie", 3, 2.50, 3, 0.1, "costa_brownie", "nuts",
        340, "This is a falalfel wrap", 5.50),
    FoodItem(4, "Ham Sandwich", 4, 2.50, 3, 0.1, "ham_sandwich", "nuts", 340,
        "This is a falalfel wrap", 5.50),
    FoodItem(5, "Cheese Toastie", 5, 2.50, 3, 0.1, "cheese_toastie", "nuts",
        340, "This is a falalfel wrap", 5.50),
  ];
}

class FoodCatalogue {
  final List<FoodItem> foodCatalogue = FoodItem.getFoodCatalogue();
}
