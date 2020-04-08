class FoodItem {
  final Object foodDetail;

  static String getFoodName(foodDetail) {
    return foodDetail.itemName;
  }

  static String getShopName(foodDetail) {
    return foodDetail.shopName;
  }

  static int getId(foodDetail) {
    return foodDetail.id;
  }

  static int getShopDistance(foodDetail) {
    return foodDetail.distance;
  }

  static int getPrice(foodDetail) {
    return foodDetail.price;
  }

  static int getNumRemaining(foodDetail) {
    return foodDetail.numRemaining;
  }

  FoodItem(this.foodDetail);
}
