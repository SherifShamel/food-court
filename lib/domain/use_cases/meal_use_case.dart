import 'package:dartz/dartz.dart';
import 'package:food_court/domain/repository/meal_repository.dart';

import '../../core/failure/failure.dart';
import '../entity/meal_entity.dart';

class MealUseCase {
  final MealRepository mealRepository;

  MealUseCase(this.mealRepository);

  Future<Either<Failure, List<MealEntity>>> getMeals() async {
    return await mealRepository.getMeals();
  }
}
