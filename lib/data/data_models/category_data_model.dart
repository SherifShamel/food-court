import '../../domain/entity/meal_entity.dart';

class MealDataModel extends MealEntity {
  MealDataModel({
    required super.mealName,
    // required super.status,
    // required super.mealUrl,
    // required super.mealRate,
    // required super.mealPrice,
  });

  factory MealDataModel.fromJson(Map<String, dynamic> json) => MealDataModel(
        // status: json["status"],
        // mealUrl: json["mealImage"],
        // mealRate: json["rate"],
        // mealPrice: json["mealPrice"],
        mealName: json["mealName"],
      );

  Map<String, dynamic> toJson() {
    return {
      // "name": status,
      // "url": mealUrl,
      // "rate": mealRate,
      // "mealPrice": mealPrice,
      "mealName": mealName,
    };
  }
}
