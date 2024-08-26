import '../../domain/entity/meal_entity.dart';

class MealDataModel extends MealEntity {
  MealDataModel({
    required super.mealName,
    required super.mealUrl,
    required super.mealRate,
    required super.mealPrice,
  });

  factory MealDataModel.fromJson(Map<String, dynamic> json) => MealDataModel(
        mealName: json["mealName"],
        mealUrl: json["mealImage"],
        mealRate: json["rate"],
        mealPrice: json["mealPrice"],
      );

  Map<String, dynamic> toJson() {
    return {
      "name": mealName,
      "url": mealUrl,
      "rate": mealRate,
      "mealPrice": mealPrice,
    };
  }
}
