import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_court/core/failure/failures.dart';
import 'package:food_court/data/data_source/meals_data_source.dart';
import 'package:food_court/data/data_source/meals_data_source_imp.dart';
import 'package:food_court/data/repository_imp/meal_repository_imp.dart';
import 'package:food_court/domain/repository/meal_repository.dart';
import 'package:food_court/presentation/features/settings_feature/view_model/states.dart';

import '../../../../domain/use_cases/meal_use_case.dart';

class MealViewModel extends Cubit<MealsStates> {
  MealViewModel() : super(LoadingState());

  late MealsDataSource mealsDataSource;
  late MealRepository mealRepository;
  late MealUseCase mealUseCase;

  Future<bool> getData() async {
    emit(LoadingState());

    mealsDataSource = MealsDataSourceImp();
    mealRepository = MealRepositoryImp(mealsDataSource);
    mealUseCase = MealUseCase(mealRepository);

    final result = await mealUseCase.getMeals();

    return result.fold(
      (fail) {
        var errorMessage = fail as ServerFailure;
        emit(
          ErrorState(errorMessage.message ?? ""),
        );
        return Future.value(false);
      },
      (data) {
        emit(
          SuccessMealState(data),
        );
        return Future.value(true);
      },
    );
  }
}
