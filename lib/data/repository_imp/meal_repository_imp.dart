import 'package:dartz/dartz.dart';
import 'package:food_court/core/failure/failures.dart';
import 'package:food_court/data/data_source/meals_data_source.dart';
import 'package:food_court/domain/entity/meal_entity.dart';
import 'package:food_court/domain/repository/meal_repository.dart';

class MealRepositoryImp extends MealRepository {
  final MealsDataSource mealsDataSource;

  MealRepositoryImp(this.mealsDataSource);

  @override
  Future<Either<Failure, List<MealEntity>>> getMeals() async {
    try {
      final response = mealsDataSource.getAllMeals();


      var data = await response.get();
      var mealsList = data.docs.map((e) => e.data()).toList();
      return Right(mealsList);
    } catch (e) {
      return Left(
        ServerFailure(
          statusCode: e.toString(),
        ),
      );
    }
  }
}
