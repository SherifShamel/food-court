import 'package:dartz/dartz.dart';
import 'package:food_court/domain/entity/meal_entity.dart';

import '../../core/failure/failure.dart';

abstract class MealRepository{
Future<Either<Failure,List<MealEntity>>> getMeals();
}