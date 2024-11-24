class MealModel {
  // String status;
  final String mealName;

  final num mealPrice;
  final String mealImage;

  MealModel({
    // required this.status,
    required this.mealName,
    required this.mealPrice,
    required this.mealImage,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) => MealModel(
        // status: json["status"],
        mealName: json["mealName"],
        mealPrice: json["mealPrice"],
        mealImage: json["mealImage"],
      );

  Map<String, dynamic> toJson() {
    return {
      // "status": status,
      "mealName": mealName,
      "mealPrice":mealPrice,
      "mealImage":mealImage,
    };
  }
}
