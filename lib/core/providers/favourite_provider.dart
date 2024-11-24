import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_court/model/meal_model.dart';

class FavouriteMealsNotifier extends StateNotifier<List<MealModel>> {
  FavouriteMealsNotifier() : super([]);

  bool toggleMealFavouriteStatus(MealModel mealModel) {
    final mealIsFavourite = state.contains(mealModel);
    if (mealIsFavourite) {
      state =
          state.where((meal) => meal.mealName != mealModel.mealName).toList();
      return false;
    } else {
      state = [...state,mealModel];
      return true;
    }
  }

}

final favouriteProvider = StateNotifierProvider<FavouriteMealsNotifier, List<MealModel>>((ref){
  return FavouriteMealsNotifier();
});
