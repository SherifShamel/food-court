import 'package:food_court/data/data_models/category_data_model.dart';
import 'package:food_court/domain/entity/meal_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'meals_data_source.dart';

class MealsDataSourceImp extends MealsDataSource {
  @override
  CollectionReference<MealEntity> getAllMeals() {
    var db = FirebaseFirestore.instance;
    return db.collection("meals").withConverter<MealDataModel>(
          fromFirestore: (snapshot, _) =>
              MealDataModel.fromJson(snapshot.data()!),
          toFirestore: (mealViewModel, _) => mealViewModel.toJson(),
        );
  }
}
