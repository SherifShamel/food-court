import 'package:flutter/material.dart';
import 'package:food_court/core/config/application_theme_manager/theme_manager.dart';
import 'package:food_court/domain/entity/meal_entity.dart';

class ItemWidget extends StatelessWidget {
  final MealEntity mealEntity;

  const ItemWidget({super.key, required this.mealEntity});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.4,
              child: Image.network(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.5,
                mealEntity.mealUrl,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              mealEntity.mealName,
              style: ApplicationThemeManager.theme.textTheme.titleLarge,
            ),
          ],
        ),
        Text("${mealEntity.mealName} : ${mealEntity.mealPrice}")
      ],
    );
  }
}
