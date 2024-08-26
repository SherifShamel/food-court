import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_court/domain/entity/meal_entity.dart';

abstract class MealsDataSource {
  CollectionReference<MealEntity> getAllMeals();
}
