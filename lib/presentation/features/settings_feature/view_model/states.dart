import '../../../../domain/entity/meal_entity.dart';

sealed class MealsStates {}

class LoadingState extends MealsStates {}

class ErrorState extends MealsStates {
  final String errorMessage;

  ErrorState(this.errorMessage);
}

class SuccessMealState extends MealsStates {
  final List<MealEntity> mealEntity;

  SuccessMealState(this.mealEntity);
}
